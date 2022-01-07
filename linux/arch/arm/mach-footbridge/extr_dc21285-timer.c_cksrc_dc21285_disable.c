
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 scalar_t__* CSR_TIMER2_CNTL ;

__attribute__((used)) static void cksrc_dc21285_disable(struct clocksource *cs)
{
 *CSR_TIMER2_CNTL = 0;
}
