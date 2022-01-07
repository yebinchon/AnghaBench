
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t mips_machtype ;
 char const** system_types ;

const char *get_system_type(void)
{
 return system_types[mips_machtype];
}
