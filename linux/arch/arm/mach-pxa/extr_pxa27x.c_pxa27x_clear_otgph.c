
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSSR ;
 int PSSR_OTGPH ;
 scalar_t__ cpu_is_pxa27x () ;

void pxa27x_clear_otgph(void)
{
 if (cpu_is_pxa27x() && (PSSR & PSSR_OTGPH))
  PSSR |= PSSR_OTGPH;
}
