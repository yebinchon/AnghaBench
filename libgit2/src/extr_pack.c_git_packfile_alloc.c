
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; int st_size; int st_mode; } ;
struct TYPE_2__ {int fd; int size; } ;
struct git_pack_file {int pack_keep; int pack_local; int index_version; int bases; int lock; scalar_t__ mtime; TYPE_1__ mwf; scalar_t__ pack_name; } ;
typedef scalar_t__ git_time_t ;


 int GIT_ERROR_CHECK_ALLOC (struct git_pack_file*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_OS ;
 int S_ISREG (int ) ;
 scalar_t__ cache_init (int *) ;
 struct git_pack_file* git__calloc (int,size_t) ;
 int git__free (struct git_pack_file*) ;
 scalar_t__ git__suffixcmp (char const*,char*) ;
 int git_disable_pack_keep_file_checks ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_init (int *) ;
 int git_odb__error_notfound (char*,int *,int ) ;
 int git_path_exists (scalar_t__) ;
 int memcpy (scalar_t__,char const*,int) ;
 scalar_t__ p_stat (scalar_t__,struct stat*) ;
 size_t strlen (char const*) ;

int git_packfile_alloc(struct git_pack_file **pack_out, const char *path)
{
 struct stat st;
 struct git_pack_file *p;
 size_t path_len = path ? strlen(path) : 0, alloc_len;

 *pack_out = ((void*)0);

 if (path_len < strlen(".idx"))
  return git_odb__error_notfound("invalid packfile path", ((void*)0), 0);

 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, sizeof(*p), path_len);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, alloc_len, 2);

 p = git__calloc(1, alloc_len);
 GIT_ERROR_CHECK_ALLOC(p);

 memcpy(p->pack_name, path, path_len + 1);





 if (git__suffixcmp(path, ".idx") == 0) {
  size_t root_len = path_len - strlen(".idx");

  if (!git_disable_pack_keep_file_checks) {
   memcpy(p->pack_name + root_len, ".keep", sizeof(".keep"));
   if (git_path_exists(p->pack_name) == 1)
    p->pack_keep = 1;
  }

  memcpy(p->pack_name + root_len, ".pack", sizeof(".pack"));
 }

 if (p_stat(p->pack_name, &st) < 0 || !S_ISREG(st.st_mode)) {
  git__free(p);
  return git_odb__error_notfound("packfile not found", ((void*)0), 0);
 }




 p->mwf.fd = -1;
 p->mwf.size = st.st_size;
 p->pack_local = 1;
 p->mtime = (git_time_t)st.st_mtime;
 p->index_version = -1;

 if (git_mutex_init(&p->lock)) {
  git_error_set(GIT_ERROR_OS, "failed to initialize packfile mutex");
  git__free(p);
  return -1;
 }

 if (cache_init(&p->bases) < 0) {
  git__free(p);
  return -1;
 }

 *pack_out = p;

 return 0;
}
