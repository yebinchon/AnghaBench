
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_hw {int dummy; } ;


 int DIV_ROUND_CLOSEST_ULL (int ,unsigned long) ;
 int clamp (int,int,int) ;

__attribute__((used)) static int sclk_div_getdiv(struct clk_hw *hw, unsigned long rate,
      unsigned long prate, int maxdiv)
{
 int div = DIV_ROUND_CLOSEST_ULL((u64)prate, rate);

 return clamp(div, 2, maxdiv);
}
