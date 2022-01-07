
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* set_parent ) (struct clk_hw*,int ) ;} ;


 TYPE_1__ clk_mux_ops ;
 int disable_power_domain_write_protection () ;
 int enable_power_domain_write_protection () ;
 int sofware_reset_backup_domain () ;
 int stub1 (struct clk_hw*,int ) ;

__attribute__((used)) static int cclk_mux_set_parent(struct clk_hw *hw, u8 index)
{
 int ret;

 disable_power_domain_write_protection();

 sofware_reset_backup_domain();

 ret = clk_mux_ops.set_parent(hw, index);

 enable_power_domain_write_protection();

 return ret;
}
