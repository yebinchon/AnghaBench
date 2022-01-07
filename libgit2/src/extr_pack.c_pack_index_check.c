
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct stat {scalar_t__ st_size; int st_mode; } ;
struct git_pack_idx_header {scalar_t__ idx_signature; int idx_version; } ;
struct TYPE_3__ {void* data; } ;
struct git_pack_file {int num_objects; int index_version; TYPE_1__ index_map; } ;
typedef scalar_t__ git_file ;


 int GIT_ERROR_ODB ;
 int GIT_ERROR_OS ;
 int PACK_IDX_SIGNATURE ;
 int S_ISREG (int ) ;
 int git__is_sizet (scalar_t__) ;
 int git_error_set (int ,char*,char const*) ;
 int git_futils_mmap_free (TYPE_1__*) ;
 int git_futils_mmap_ro (TYPE_1__*,scalar_t__,int ,size_t) ;
 scalar_t__ git_futils_open_ro (char const*) ;
 scalar_t__ htonl (int ) ;
 int ntohl (int) ;
 int p_close (scalar_t__) ;
 scalar_t__ p_fstat (scalar_t__,struct stat*) ;
 int packfile_error (char*) ;

__attribute__((used)) static int pack_index_check(const char *path, struct git_pack_file *p)
{
 struct git_pack_idx_header *hdr;
 uint32_t version, nr, i, *index;
 void *idx_map;
 size_t idx_size;
 struct stat st;
 int error;

 git_file fd = git_futils_open_ro(path);
 if (fd < 0)
  return fd;

 if (p_fstat(fd, &st) < 0) {
  p_close(fd);
  git_error_set(GIT_ERROR_OS, "unable to stat pack index '%s'", path);
  return -1;
 }

 if (!S_ISREG(st.st_mode) ||
  !git__is_sizet(st.st_size) ||
  (idx_size = (size_t)st.st_size) < 4 * 256 + 20 + 20)
 {
  p_close(fd);
  git_error_set(GIT_ERROR_ODB, "invalid pack index '%s'", path);
  return -1;
 }

 error = git_futils_mmap_ro(&p->index_map, fd, 0, idx_size);

 p_close(fd);

 if (error < 0)
  return error;

 hdr = idx_map = p->index_map.data;

 if (hdr->idx_signature == htonl(PACK_IDX_SIGNATURE)) {
  version = ntohl(hdr->idx_version);

  if (version < 2 || version > 2) {
   git_futils_mmap_free(&p->index_map);
   return packfile_error("unsupported index version");
  }

 } else
  version = 1;

 nr = 0;
 index = idx_map;

 if (version > 1)
  index += 2;

 for (i = 0; i < 256; i++) {
  uint32_t n = ntohl(index[i]);
  if (n < nr) {
   git_futils_mmap_free(&p->index_map);
   return packfile_error("index is non-monotonic");
  }
  nr = n;
 }

 if (version == 1) {







  if (idx_size != 4*256 + nr * 24 + 20 + 20) {
   git_futils_mmap_free(&p->index_map);
   return packfile_error("index is corrupted");
  }
 } else if (version == 2) {
  unsigned long min_size = 8 + 4*256 + nr*(20 + 4 + 4) + 20 + 20;
  unsigned long max_size = min_size;

  if (nr)
   max_size += (nr - 1)*8;

  if (idx_size < min_size || idx_size > max_size) {
   git_futils_mmap_free(&p->index_map);
   return packfile_error("wrong index size");
  }
 }

 p->num_objects = nr;
 p->index_version = version;
 return 0;
}
