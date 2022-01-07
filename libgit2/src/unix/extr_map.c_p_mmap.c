
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_off_t ;
struct TYPE_4__ {size_t len; int * data; } ;
typedef TYPE_1__ git_map ;


 int GIT_ERROR_OS ;
 int GIT_MAP_PRIVATE ;
 int GIT_MAP_SHARED ;
 int GIT_MAP_TYPE ;
 int GIT_MMAP_VALIDATE (TYPE_1__*,size_t,int,int) ;
 int GIT_PROT_WRITE ;
 int * MAP_FAILED ;
 int MAP_PRIVATE ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int git_error_set (int ,char*) ;
 int * mmap (int *,size_t,int,int,int,int ) ;

int p_mmap(git_map *out, size_t len, int prot, int flags, int fd, git_off_t offset)
{
 int mprot = PROT_READ;
 int mflag = 0;

 GIT_MMAP_VALIDATE(out, len, prot, flags);

 out->data = ((void*)0);
 out->len = 0;

 if (prot & GIT_PROT_WRITE)
  mprot |= PROT_WRITE;

 if ((flags & GIT_MAP_TYPE) == GIT_MAP_SHARED)
  mflag = MAP_SHARED;
 else if ((flags & GIT_MAP_TYPE) == GIT_MAP_PRIVATE)
  mflag = MAP_PRIVATE;
 else
  mflag = MAP_SHARED;

 out->data = mmap(((void*)0), len, mprot, mflag, fd, offset);

 if (!out->data || out->data == MAP_FAILED) {
  git_error_set(GIT_ERROR_OS, "failed to mmap. Could not write data");
  return -1;
 }

 out->len = len;

 return 0;
}
