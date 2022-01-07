
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fapll_data {int dummy; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ ti_fapll_clock_is_bypass (struct fapll_data*) ;
 struct fapll_data* to_fapll (struct clk_hw*) ;

__attribute__((used)) static u8 ti_fapll_get_parent(struct clk_hw *hw)
{
 struct fapll_data *fd = to_fapll(hw);

 if (ti_fapll_clock_is_bypass(fd))
  return 1;

 return 0;
}
