
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s3c24xx_clkout {int mask; int shift; } ;
struct clk_hw {int dummy; } ;


 int s3c2410_modify_misccr (int,int) ;
 struct s3c24xx_clkout* to_s3c24xx_clkout (struct clk_hw*) ;

__attribute__((used)) static int s3c24xx_clkout_set_parent(struct clk_hw *hw, u8 index)
{
 struct s3c24xx_clkout *clkout = to_s3c24xx_clkout(hw);

 s3c2410_modify_misccr((clkout->mask << clkout->shift),
         (index << clkout->shift));

 return 0;
}
