
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int nlm_get_core_frequency (int ,int ) ;

unsigned int nlm_get_cpu_frequency(void)
{
 return nlm_get_core_frequency(0, 0);
}
