
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int clk_nodrv_prepare_enable(struct clk_hw *hw)
{
 return -ENXIO;
}
