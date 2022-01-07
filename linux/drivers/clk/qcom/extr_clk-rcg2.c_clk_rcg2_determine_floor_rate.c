
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rcg2 {int freq_tbl; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;


 int FLOOR ;
 int _freq_tbl_determine_rate (struct clk_hw*,int ,struct clk_rate_request*,int ) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg2_determine_floor_rate(struct clk_hw *hw,
      struct clk_rate_request *req)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);

 return _freq_tbl_determine_rate(hw, rcg->freq_tbl, req, FLOOR);
}
