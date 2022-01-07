
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct clk_sp810_timerclken {int channel; TYPE_1__* sp810; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ SCCTRL ;
 int SCCTRL_TIMERENnSEL_SHIFT (int ) ;
 int readl (scalar_t__) ;
 struct clk_sp810_timerclken* to_clk_sp810_timerclken (struct clk_hw*) ;

__attribute__((used)) static u8 clk_sp810_timerclken_get_parent(struct clk_hw *hw)
{
 struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
 u32 val = readl(timerclken->sp810->base + SCCTRL);

 return !!(val & (1 << SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel)));
}
