
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int clk_nodrv_set_parent(struct clk_hw *hw, u8 index)
{
 return -ENXIO;
}
