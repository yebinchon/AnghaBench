
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long EFAULT ;
 unsigned long PAGE_SIZE ;
 long __probe_kernel_read (void*,void const*,size_t) ;

long probe_kernel_read(void *dst, const void *src, size_t size)
{
 unsigned long addr = (unsigned long)src;

 if (addr < PAGE_SIZE)
  return -EFAULT;



 return __probe_kernel_read(dst, src, size);
}
