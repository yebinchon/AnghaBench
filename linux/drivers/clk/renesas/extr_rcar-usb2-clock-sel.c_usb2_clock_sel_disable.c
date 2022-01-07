
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int to_priv (struct clk_hw*) ;
 int usb2_clock_sel_disable_extal_only (int ) ;

__attribute__((used)) static void usb2_clock_sel_disable(struct clk_hw *hw)
{
 usb2_clock_sel_disable_extal_only(to_priv(hw));
}
