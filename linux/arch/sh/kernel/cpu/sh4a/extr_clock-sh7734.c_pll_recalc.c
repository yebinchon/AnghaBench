
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int MODEMR ;
 int MODEMR_533MHZ ;
 int MODEMR_MASK ;
 int __raw_readl (int ) ;

__attribute__((used)) static unsigned long pll_recalc(struct clk *clk)
{
 int mode = 12;
 u32 r = __raw_readl(MODEMR);

 if ((r & MODEMR_MASK) & MODEMR_533MHZ)
  mode = 16;

 return clk->parent->rate * mode;
}
