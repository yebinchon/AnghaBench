
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int MODE_PIN9 ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;
 int clk_register (int *) ;
 int clk_set_rate (struct clk*,int) ;
 int clkdev_add (int *) ;
 int pr_err (char*) ;
 int sdk7786_pcie_cl ;
 int sdk7786_pcie_clk ;
 scalar_t__ test_mode_pin (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sdk7786_clk_init(void)
{
 struct clk *clk;
 int ret;





 if (test_mode_pin(MODE_PIN9))
  return -EINVAL;

 clk = clk_get(((void*)0), "extal");
 if (IS_ERR(clk))
  return PTR_ERR(clk);
 ret = clk_set_rate(clk, 33333333);
 clk_put(clk);




 ret = clk_register(&sdk7786_pcie_clk);
 if (unlikely(ret)) {
  pr_err("FPGA clock registration failed\n");
  return ret;
 }

 clkdev_add(&sdk7786_pcie_cl);

 return 0;
}
