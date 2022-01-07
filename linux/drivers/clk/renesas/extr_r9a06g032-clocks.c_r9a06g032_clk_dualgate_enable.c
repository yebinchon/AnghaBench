
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r9a06g032_clk_dualgate {int dummy; } ;
struct clk_hw {int dummy; } ;


 int r9a06g032_clk_dualgate_setenable (struct r9a06g032_clk_dualgate*,int) ;
 struct r9a06g032_clk_dualgate* to_clk_dualgate (struct clk_hw*) ;

__attribute__((used)) static int r9a06g032_clk_dualgate_enable(struct clk_hw *hw)
{
 struct r9a06g032_clk_dualgate *gate = to_clk_dualgate(hw);

 r9a06g032_clk_dualgate_setenable(gate, 1);

 return 0;
}
