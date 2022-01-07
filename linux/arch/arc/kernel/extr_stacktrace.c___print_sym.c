
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,void*) ;

__attribute__((used)) static int __print_sym(unsigned int address, void *unused)
{
 printk("  %pS\n", (void *)address);
 return 0;
}
