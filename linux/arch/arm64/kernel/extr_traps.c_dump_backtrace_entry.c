
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,void*) ;

__attribute__((used)) static void dump_backtrace_entry(unsigned long where)
{
 printk(" %pS\n", (void *)where);
}
