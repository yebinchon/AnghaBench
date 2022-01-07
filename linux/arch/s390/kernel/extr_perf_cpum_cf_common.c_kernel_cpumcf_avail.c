
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpum_cf_initalized ;

bool kernel_cpumcf_avail(void)
{
 return cpum_cf_initalized;
}
