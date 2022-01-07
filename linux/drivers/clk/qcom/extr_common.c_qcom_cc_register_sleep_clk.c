
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int _qcom_cc_register_board_clk (struct device*,char*,char*,int,int) ;

int qcom_cc_register_sleep_clk(struct device *dev)
{
 return _qcom_cc_register_board_clk(dev, "sleep_clk", "sleep_clk_src",
        32768, 1);
}
