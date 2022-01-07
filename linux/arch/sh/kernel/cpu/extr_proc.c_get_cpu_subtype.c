
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cpuinfo {size_t type; } ;


 char const** cpu_name ;

const char *get_cpu_subtype(struct sh_cpuinfo *c)
{
 return cpu_name[c->type];
}
