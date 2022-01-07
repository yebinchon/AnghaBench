
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_DSCLK ;
 int nw_gpio_modify_op (int ,int ) ;

__attribute__((used)) static inline void netwinder_ds1620_set_clk(int clk)
{
 nw_gpio_modify_op(GPIO_DSCLK, clk ? GPIO_DSCLK : 0);
}
