
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __kernel_text_address (unsigned long) ;

int is_valid_bugaddr(unsigned long addr)
{
 return __kernel_text_address(addr);
}
