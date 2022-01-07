
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; scalar_t__ base; } ;
struct ccu_phase {int shift; int width; TYPE_1__ common; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 unsigned int clk_hw_get_rate (struct clk_hw*) ;
 struct ccu_phase* hw_to_ccu_phase (struct clk_hw*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int ccu_phase_get_phase(struct clk_hw *hw)
{
 struct ccu_phase *phase = hw_to_ccu_phase(hw);
 struct clk_hw *parent, *grandparent;
 unsigned int parent_rate, grandparent_rate;
 u16 step, parent_div;
 u32 reg;
 u8 delay;

 reg = readl(phase->common.base + phase->common.reg);
 delay = (reg >> phase->shift);
 delay &= (1 << phase->width) - 1;

 if (!delay)
  return 180;


 parent = clk_hw_get_parent(hw);
 if (!parent)
  return -EINVAL;


 parent_rate = clk_hw_get_rate(parent);
 if (!parent_rate)
  return -EINVAL;


 grandparent = clk_hw_get_parent(parent);
 if (!grandparent)
  return -EINVAL;


 grandparent_rate = clk_hw_get_rate(grandparent);
 if (!grandparent_rate)
  return -EINVAL;


 parent_div = grandparent_rate / parent_rate;

 step = DIV_ROUND_CLOSEST(360, parent_div);
 return delay * step;
}
