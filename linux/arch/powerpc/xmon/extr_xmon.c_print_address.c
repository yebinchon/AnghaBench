
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmon_print_symbol (unsigned long,char*,char*) ;

void
print_address(unsigned long addr)
{
 xmon_print_symbol(addr, "\t# ", "");
}
