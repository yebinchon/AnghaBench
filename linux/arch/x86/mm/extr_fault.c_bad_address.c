
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int probe_kernel_address (unsigned long*,unsigned long) ;

__attribute__((used)) static int bad_address(void *p)
{
 unsigned long dummy;

 return probe_kernel_address((unsigned long *)p, dummy);
}
