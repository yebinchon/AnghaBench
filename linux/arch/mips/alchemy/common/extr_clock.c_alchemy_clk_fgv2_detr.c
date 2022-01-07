
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int reg; } ;


 int alchemy_clk_fgcs_detr (struct clk_hw*,struct clk_rate_request*,int,int) ;
 int alchemy_rdsys (int ) ;
 struct alchemy_fgcs_clk* to_fgcs_clk (struct clk_hw*) ;

__attribute__((used)) static int alchemy_clk_fgv2_detr(struct clk_hw *hw,
     struct clk_rate_request *req)
{
 struct alchemy_fgcs_clk *c = to_fgcs_clk(hw);
 int scale, maxdiv;

 if (alchemy_rdsys(c->reg) & (1 << 30)) {
  scale = 1;
  maxdiv = 256;
 } else {
  scale = 2;
  maxdiv = 512;
 }

 return alchemy_clk_fgcs_detr(hw, req, scale, maxdiv);
}
