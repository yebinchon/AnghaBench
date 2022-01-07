
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raspberrypi_clk {int pllb_arm; int dev; int pllb_arm_lookup; } ;


 int CLK_GET_RATE_NOCACHE ;
 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_hw_register_fixed_factor (int ,char*,char*,int,int,int) ;
 int clk_hw_unregister_fixed_factor (int ) ;
 int clkdev_hw_create (int ,int *,char*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
{
 rpi->pllb_arm = clk_hw_register_fixed_factor(rpi->dev,
    "pllb_arm", "pllb",
    CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
    1, 2);
 if (IS_ERR(rpi->pllb_arm)) {
  dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
  return PTR_ERR(rpi->pllb_arm);
 }

 rpi->pllb_arm_lookup = clkdev_hw_create(rpi->pllb_arm, ((void*)0), "cpu0");
 if (!rpi->pllb_arm_lookup) {
  dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
  clk_hw_unregister_fixed_factor(rpi->pllb_arm);
  return -ENOMEM;
 }

 return 0;
}
