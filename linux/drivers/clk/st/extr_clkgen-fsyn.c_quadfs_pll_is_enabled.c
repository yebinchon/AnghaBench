
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct st_clk_quadfs_pll {TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ powerup_polarity; } ;


 int CLKGEN_READ (struct st_clk_quadfs_pll*,int ) ;
 int npda ;
 struct st_clk_quadfs_pll* to_quadfs_pll (struct clk_hw*) ;

__attribute__((used)) static int quadfs_pll_is_enabled(struct clk_hw *hw)
{
 struct st_clk_quadfs_pll *pll = to_quadfs_pll(hw);
 u32 npda = CLKGEN_READ(pll, npda);

 return pll->data->powerup_polarity ? !npda : !!npda;
}
