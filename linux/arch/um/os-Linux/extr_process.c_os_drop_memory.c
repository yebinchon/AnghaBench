
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_REMOVE ;
 int errno ;
 int madvise (void*,int,int ) ;

int os_drop_memory(void *addr, int length)
{
 int err;

 err = madvise(addr, length, MADV_REMOVE);
 if (err < 0)
  err = -errno;
 return err;
}
