
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CP0_LEGACY_COMPARE_IRQ ;

unsigned int get_c0_compare_int(void)
{
 return CP0_LEGACY_COMPARE_IRQ;
}
