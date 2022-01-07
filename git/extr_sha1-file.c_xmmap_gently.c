
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 void* MAP_FAILED ;
 void* mmap (void*,size_t,int,int,int,int ) ;
 int mmap_limit_check (size_t) ;

void *xmmap_gently(void *start, size_t length,
    int prot, int flags, int fd, off_t offset)
{
 void *ret;

 mmap_limit_check(length);
 ret = mmap(start, length, prot, flags, fd, offset);
 if (ret == MAP_FAILED && !length)
  ret = ((void*)0);
 return ret;
}
