
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_clk_pll {int tuner_addr; int tuner_en_addr; TYPE_1__* data; } ;
struct TYPE_2__ {int tuner_en_bit; } ;


 int AUDPLL_TUNER_EN ;
 int BIT (int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void __mtk_pll_tuner_enable(struct mtk_clk_pll *pll)
{
 u32 r;

 if (pll->tuner_en_addr) {
  r = readl(pll->tuner_en_addr) | BIT(pll->data->tuner_en_bit);
  writel(r, pll->tuner_en_addr);
 } else if (pll->tuner_addr) {
  r = readl(pll->tuner_addr) | AUDPLL_TUNER_EN;
  writel(r, pll->tuner_addr);
 }
}
