
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_off_t ;
struct TYPE_4__ {size_t len; int * fmh; int * data; } ;
typedef TYPE_1__ git_map ;
typedef int * HANDLE ;
typedef int DWORD ;


 int CloseHandle (int *) ;
 int * CreateFileMapping (int *,int *,int,int ,int ,int *) ;
 int EBADF ;
 int EINVAL ;
 int FILE_MAP_READ ;
 int FILE_MAP_WRITE ;
 int GIT_ERROR_OS ;
 int GIT_MMAP_VALIDATE (TYPE_1__*,size_t,int,int) ;
 int GIT_PROT_READ ;
 int GIT_PROT_WRITE ;
 int * INVALID_HANDLE_VALUE ;
 int * MapViewOfFile (int *,int,int,int,size_t) ;
 int PAGE_READONLY ;
 int PAGE_READWRITE ;
 int _get_osfhandle (int) ;
 int assert (int) ;
 int errno ;
 int get_allocation_granularity () ;
 int git_error_set (int ,char*) ;

int p_mmap(git_map *out, size_t len, int prot, int flags, int fd, git_off_t offset)
{
 HANDLE fh = (HANDLE)_get_osfhandle(fd);
 DWORD alignment = get_allocation_granularity();
 DWORD fmap_prot = 0;
 DWORD view_prot = 0;
 DWORD off_low = 0;
 DWORD off_hi = 0;
 git_off_t page_start;
 git_off_t page_offset;

 GIT_MMAP_VALIDATE(out, len, prot, flags);

 out->data = ((void*)0);
 out->len = 0;
 out->fmh = ((void*)0);

 if (fh == INVALID_HANDLE_VALUE) {
  errno = EBADF;
  git_error_set(GIT_ERROR_OS, "failed to mmap. Invalid handle value");
  return -1;
 }

 if (prot & GIT_PROT_WRITE)
  fmap_prot |= PAGE_READWRITE;
 else if (prot & GIT_PROT_READ)
  fmap_prot |= PAGE_READONLY;

 if (prot & GIT_PROT_WRITE)
  view_prot |= FILE_MAP_WRITE;
 if (prot & GIT_PROT_READ)
  view_prot |= FILE_MAP_READ;

 page_start = (offset / alignment) * alignment;
 page_offset = offset - page_start;

 if (page_offset != 0) {
  errno = EINVAL;
  git_error_set(GIT_ERROR_OS, "failed to mmap. Offset must be multiple of allocation granularity");
  return -1;
 }

 out->fmh = CreateFileMapping(fh, ((void*)0), fmap_prot, 0, 0, ((void*)0));
 if (!out->fmh || out->fmh == INVALID_HANDLE_VALUE) {
  git_error_set(GIT_ERROR_OS, "failed to mmap. Invalid handle value");
  out->fmh = ((void*)0);
  return -1;
 }

 assert(sizeof(git_off_t) == 8);

 off_low = (DWORD)(page_start);
 off_hi = (DWORD)(page_start >> 32);
 out->data = MapViewOfFile(out->fmh, view_prot, off_hi, off_low, len);
 if (!out->data) {
  git_error_set(GIT_ERROR_OS, "failed to mmap. No data written");
  CloseHandle(out->fmh);
  out->fmh = ((void*)0);
  return -1;
 }
 out->len = len;

 return 0;
}
