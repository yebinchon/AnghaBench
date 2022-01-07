
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fapll_data {int base; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int FAPLL_MAIN_CLEAR_MASK ;
 int FAPLL_MAIN_DIV_P_SHIFT ;
 int FAPLL_MAIN_MULT_N_SHIFT ;
 int readl_relaxed (int ) ;
 int ti_fapll_clear_bypass (struct fapll_data*) ;
 scalar_t__ ti_fapll_is_enabled (struct clk_hw*) ;
 int ti_fapll_set_bypass (struct fapll_data*) ;
 int ti_fapll_set_div_mult (unsigned long,unsigned long,int*,int*) ;
 int ti_fapll_wait_lock (struct fapll_data*) ;
 struct fapll_data* to_fapll (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int ti_fapll_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct fapll_data *fd = to_fapll(hw);
 u32 pre_div_p, mult_n, v;
 int error;

 if (!rate)
  return -EINVAL;

 error = ti_fapll_set_div_mult(rate, parent_rate,
          &pre_div_p, &mult_n);
 if (error)
  return error;

 ti_fapll_set_bypass(fd);
 v = readl_relaxed(fd->base);
 v &= ~FAPLL_MAIN_CLEAR_MASK;
 v |= pre_div_p << FAPLL_MAIN_DIV_P_SHIFT;
 v |= mult_n << FAPLL_MAIN_MULT_N_SHIFT;
 writel_relaxed(v, fd->base);
 if (ti_fapll_is_enabled(hw))
  ti_fapll_wait_lock(fd);
 ti_fapll_clear_bypass(fd);

 return 0;
}
