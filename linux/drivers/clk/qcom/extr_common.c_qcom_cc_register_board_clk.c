
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int _qcom_cc_register_board_clk (struct device*,char const*,char const*,unsigned long,int) ;

int qcom_cc_register_board_clk(struct device *dev, const char *path,
          const char *name, unsigned long rate)
{
 bool add_factor = 1;







 return _qcom_cc_register_board_clk(dev, path, name, rate, add_factor);
}
