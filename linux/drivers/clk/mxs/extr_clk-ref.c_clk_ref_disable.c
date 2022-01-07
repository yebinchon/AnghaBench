
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_ref {int idx; scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ SET ;
 struct clk_ref* to_clk_ref (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void clk_ref_disable(struct clk_hw *hw)
{
 struct clk_ref *ref = to_clk_ref(hw);

 writel_relaxed(1 << ((ref->idx + 1) * 8 - 1), ref->reg + SET);
}
