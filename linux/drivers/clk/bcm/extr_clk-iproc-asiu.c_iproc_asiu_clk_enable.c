
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ offset; int en_shift; } ;
struct iproc_asiu_clk {TYPE_1__ gate; struct iproc_asiu* asiu; } ;
struct iproc_asiu {scalar_t__ gate_base; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ IPROC_CLK_INVALID_OFFSET ;
 int readl (scalar_t__) ;
 struct iproc_asiu_clk* to_asiu_clk (struct clk_hw*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int iproc_asiu_clk_enable(struct clk_hw *hw)
{
 struct iproc_asiu_clk *clk = to_asiu_clk(hw);
 struct iproc_asiu *asiu = clk->asiu;
 u32 val;


 if (clk->gate.offset == IPROC_CLK_INVALID_OFFSET)
  return 0;

 val = readl(asiu->gate_base + clk->gate.offset);
 val |= (1 << clk->gate.en_shift);
 writel(val, asiu->gate_base + clk->gate.offset);

 return 0;
}
