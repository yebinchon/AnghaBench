
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t git_off_t ;
struct TYPE_8__ {TYPE_2__* pack; } ;
typedef TYPE_3__ git_indexer ;
struct TYPE_6__ {size_t size; int fd; } ;
struct TYPE_7__ {TYPE_1__ mwf; int pack_name; } ;


 int GIT_ERROR_OS ;
 int SEEK_SET ;
 int git__mmap_alignment (size_t*) ;
 int git_error_set (int ,char*,int ) ;
 scalar_t__ p_lseek (int,size_t,int ) ;
 scalar_t__ p_write (int,void const*,int) ;
 int write_at (TYPE_3__*,void const*,size_t,size_t) ;

__attribute__((used)) static int append_to_pack(git_indexer *idx, const void *data, size_t size)
{
 git_off_t new_size;
 size_t mmap_alignment;
 size_t page_offset;
 git_off_t page_start;
 git_off_t current_size = idx->pack->mwf.size;
 int fd = idx->pack->mwf.fd;
 int error;

 if (!size)
  return 0;

 if ((error = git__mmap_alignment(&mmap_alignment)) < 0)
  return error;





 new_size = current_size + size;
 page_offset = new_size % mmap_alignment;
 page_start = new_size - page_offset;

 if (p_lseek(fd, page_start + mmap_alignment - 1, SEEK_SET) < 0 ||
     p_write(idx->pack->mwf.fd, data, 1) < 0) {
  git_error_set(GIT_ERROR_OS, "cannot extend packfile '%s'", idx->pack->pack_name);
  return -1;
 }

 return write_at(idx, data, idx->pack->mwf.size, size);
}
