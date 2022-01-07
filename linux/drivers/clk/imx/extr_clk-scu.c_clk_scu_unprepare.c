
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_scu {int clk_type; int rsrc_id; } ;
struct clk_hw {int dummy; } ;


 int ccm_ipc_handle ;
 int clk_hw_get_name (struct clk_hw*) ;
 int pr_warn (char*,int ,int) ;
 int sc_pm_clock_enable (int ,int ,int ,int,int) ;
 struct clk_scu* to_clk_scu (struct clk_hw*) ;

__attribute__((used)) static void clk_scu_unprepare(struct clk_hw *hw)
{
 struct clk_scu *clk = to_clk_scu(hw);
 int ret;

 ret = sc_pm_clock_enable(ccm_ipc_handle, clk->rsrc_id,
     clk->clk_type, 0, 0);
 if (ret)
  pr_warn("%s: clk unprepare failed %d\n", clk_hw_get_name(hw),
   ret);
}
