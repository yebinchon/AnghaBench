
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gic_get_c0_compare_int () ;

unsigned int get_c0_compare_int(void)
{
 return gic_get_c0_compare_int();
}
