
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int APN806_MAX_DIVIDER ;
 int min (int,int ) ;

__attribute__((used)) static long ap_cpu_clk_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 int divider = *parent_rate / rate;

 divider = min(divider, APN806_MAX_DIVIDER);

 return *parent_rate / divider;
}
