
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct clk_hw*) ;} ;


 TYPE_1__ clk_gate_ops ;
 int disable_power_domain_write_protection () ;
 int enable_power_domain_write_protection () ;
 int stub1 (struct clk_hw*) ;

__attribute__((used)) static int cclk_gate_enable(struct clk_hw *hw)
{
 int ret;

 disable_power_domain_write_protection();

 ret = clk_gate_ops.enable(hw);

 enable_power_domain_write_protection();

 return ret;
}
