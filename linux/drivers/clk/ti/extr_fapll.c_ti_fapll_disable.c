
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fapll_data {int base; } ;
struct clk_hw {int dummy; } ;


 int FAPLL_MAIN_PLLEN ;
 int readl_relaxed (int ) ;
 struct fapll_data* to_fapll (struct clk_hw*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void ti_fapll_disable(struct clk_hw *hw)
{
 struct fapll_data *fd = to_fapll(hw);
 u32 v = readl_relaxed(fd->base);

 v &= ~FAPLL_MAIN_PLLEN;
 writel_relaxed(v, fd->base);
}
