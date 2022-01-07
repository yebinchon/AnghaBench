
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ACCR_D0CS ;
 unsigned long ACSR ;

__attribute__((used)) static bool pxa3xx_is_ring_osc_forced(void)
{
 unsigned long acsr = ACSR;

 return acsr & ACCR_D0CS;
}
