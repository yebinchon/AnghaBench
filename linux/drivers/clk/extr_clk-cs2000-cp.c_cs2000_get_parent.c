
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int REF_CLK ;

__attribute__((used)) static u8 cs2000_get_parent(struct clk_hw *hw)
{

 return REF_CLK;
}
