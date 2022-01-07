
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mux_hwclock {TYPE_2__* info; } ;
struct clockgen_pll_div {int dummy; } ;
struct clockgen {TYPE_1__* pll; } ;
struct TYPE_6__ {int flags; int pll; int div; } ;
struct TYPE_5__ {TYPE_3__* clksel; } ;
struct TYPE_4__ {struct clockgen_pll_div const* div; } ;


 int CLKSEL_VALID ;

__attribute__((used)) static const struct clockgen_pll_div *get_pll_div(struct clockgen *cg,
        struct mux_hwclock *hwc,
        int idx)
{
 int pll, div;

 if (!(hwc->info->clksel[idx].flags & CLKSEL_VALID))
  return ((void*)0);

 pll = hwc->info->clksel[idx].pll;
 div = hwc->info->clksel[idx].div;

 return &cg->pll[pll].div[div];
}
