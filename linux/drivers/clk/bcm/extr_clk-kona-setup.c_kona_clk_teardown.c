
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kona_clk {int dummy; } ;
struct clk_hw {int dummy; } ;


 int bcm_clk_teardown (struct kona_clk*) ;
 int clk_hw_unregister (struct clk_hw*) ;
 struct kona_clk* to_kona_clk (struct clk_hw*) ;

__attribute__((used)) static void kona_clk_teardown(struct clk_hw *hw)
{
 struct kona_clk *bcm_clk;

 if (!hw)
  return;

 clk_hw_unregister(hw);

 bcm_clk = to_kona_clk(hw);
 bcm_clk_teardown(bcm_clk);
}
