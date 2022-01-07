
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 int WARN_ON (unsigned long) ;
 int unmap_kernel_range (unsigned long,unsigned long) ;

void __iounmap_at(void *ea, unsigned long size)
{
 WARN_ON(((unsigned long)ea) & ~PAGE_MASK);
 WARN_ON(size & ~PAGE_MASK);

 unmap_kernel_range((unsigned long)ea, size);
}
