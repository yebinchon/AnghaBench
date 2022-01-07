
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct clocksource {int dummy; } ;
struct TYPE_3__ {int cmr; int rc; int imr; scalar_t__ clken; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ ATMEL_TC_BCR ;
 scalar_t__ ATMEL_TC_BMR ;
 int ATMEL_TC_CLKEN ;
 scalar_t__ ATMEL_TC_REG (int,int ) ;
 int ATMEL_TC_SYNC ;
 int CCR ;
 int CMR ;
 int IDR ;
 int IER ;
 int RA ;
 int RB ;
 int RC ;
 int bmr_cache ;
 scalar_t__ tcaddr ;
 TYPE_1__* tcb_cache ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tc_clksrc_resume(struct clocksource *cs)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(tcb_cache); i++) {

  writel(tcb_cache[i].cmr, tcaddr + ATMEL_TC_REG(i, CMR));
  writel(tcb_cache[i].rc, tcaddr + ATMEL_TC_REG(i, RC));
  writel(0, tcaddr + ATMEL_TC_REG(i, RA));
  writel(0, tcaddr + ATMEL_TC_REG(i, RB));

  writel(0xff, tcaddr + ATMEL_TC_REG(i, IDR));

  writel(tcb_cache[i].imr, tcaddr + ATMEL_TC_REG(i, IER));

  if (tcb_cache[i].clken)
   writel(ATMEL_TC_CLKEN, tcaddr + ATMEL_TC_REG(i, CCR));
 }


 writel(bmr_cache, tcaddr + ATMEL_TC_BMR);

 writel(ATMEL_TC_SYNC, tcaddr + ATMEL_TC_BCR);
}
