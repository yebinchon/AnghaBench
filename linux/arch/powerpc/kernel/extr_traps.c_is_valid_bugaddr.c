
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_kernel_addr (unsigned long) ;

int is_valid_bugaddr(unsigned long addr)
{
 return is_kernel_addr(addr);
}
