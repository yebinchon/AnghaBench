
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int mask; } ;


 scalar_t__* CSR_TIMER2_CLR ;
 int* CSR_TIMER2_CNTL ;
 int * CSR_TIMER2_LOAD ;
 int TIMER_CNTL_DIV16 ;
 int TIMER_CNTL_ENABLE ;

__attribute__((used)) static int cksrc_dc21285_enable(struct clocksource *cs)
{
 *CSR_TIMER2_LOAD = cs->mask;
 *CSR_TIMER2_CLR = 0;
 *CSR_TIMER2_CNTL = TIMER_CNTL_ENABLE | TIMER_CNTL_DIV16;
 return 0;
}
