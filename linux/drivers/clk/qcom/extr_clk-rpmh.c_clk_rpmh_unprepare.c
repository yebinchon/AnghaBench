
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpmh {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_rpmh_aggregate_state_send_command (struct clk_rpmh*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmh_clk_lock ;
 struct clk_rpmh* to_clk_rpmh (struct clk_hw*) ;

__attribute__((used)) static void clk_rpmh_unprepare(struct clk_hw *hw)
{
 struct clk_rpmh *c = to_clk_rpmh(hw);

 mutex_lock(&rpmh_clk_lock);
 clk_rpmh_aggregate_state_send_command(c, 0);
 mutex_unlock(&rpmh_clk_lock);
}
