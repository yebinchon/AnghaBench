
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int rate_offset; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int DSP_CKCTL ;
 int __raw_readw (int ) ;
 int api_ck_p ;
 int omap1_clk_disable (int ) ;
 int omap1_clk_enable (int ) ;

unsigned long omap1_ckctl_recalc_dsp_domain(struct clk *clk)
{
 int dsor;
 omap1_clk_enable(api_ck_p);
 dsor = 1 << (3 & (__raw_readw(DSP_CKCTL) >> clk->rate_offset));
 omap1_clk_disable(api_ck_p);

 return clk->parent->rate / dsor;
}
