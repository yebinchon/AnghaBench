
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;


 int alchemy_clk_fgcs_detr (struct clk_hw*,struct clk_rate_request*,int,int) ;

__attribute__((used)) static int alchemy_clk_fgv1_detr(struct clk_hw *hw,
     struct clk_rate_request *req)
{
 return alchemy_clk_fgcs_detr(hw, req, 2, 512);
}
