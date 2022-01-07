
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*,char*) ;

__attribute__((used)) static int print_trace_stack(void *data, char *name)
{
 printk("%s <%s> ", (char *)data, name);
 return 0;
}
