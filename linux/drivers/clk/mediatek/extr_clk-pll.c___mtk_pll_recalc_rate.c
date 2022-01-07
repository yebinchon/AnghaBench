
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct mtk_clk_pll {TYPE_1__* data; } ;
struct TYPE_2__ {int pcwbits; int pcwibits; } ;


 int GENMASK (int,int ) ;
 int INTEGER_BITS ;

__attribute__((used)) static unsigned long __mtk_pll_recalc_rate(struct mtk_clk_pll *pll, u32 fin,
  u32 pcw, int postdiv)
{
 int pcwbits = pll->data->pcwbits;
 int pcwfbits = 0;
 int ibits;
 u64 vco;
 u8 c = 0;


 ibits = pll->data->pcwibits ? pll->data->pcwibits : INTEGER_BITS;
 if (pcwbits > ibits)
  pcwfbits = pcwbits - ibits;

 vco = (u64)fin * pcw;

 if (pcwfbits && (vco & GENMASK(pcwfbits - 1, 0)))
  c = 1;

 vco >>= pcwfbits;

 if (c)
  vco++;

 return ((unsigned long)vco + postdiv - 1) / postdiv;
}
