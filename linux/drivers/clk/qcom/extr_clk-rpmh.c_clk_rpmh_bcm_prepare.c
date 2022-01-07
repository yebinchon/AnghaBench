
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpmh {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_rpmh_bcm_send_cmd (struct clk_rpmh*,int) ;
 struct clk_rpmh* to_clk_rpmh (struct clk_hw*) ;

__attribute__((used)) static int clk_rpmh_bcm_prepare(struct clk_hw *hw)
{
 struct clk_rpmh *c = to_clk_rpmh(hw);

 return clk_rpmh_bcm_send_cmd(c, 1);
}
