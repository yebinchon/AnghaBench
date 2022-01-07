
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct subsys_interface {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int fclk; int hclk; int pclk; } ;
struct TYPE_5__ {TYPE_1__ max; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int ) ;
 int armclk ;
 int clk_get (int *,char*) ;
 unsigned long clk_get_rate (int ) ;
 int clk_put (int ) ;
 int fclk ;
 int hclk ;
 int pr_err (char*) ;
 int pr_info (char*,unsigned long) ;
 TYPE_2__ s3c2412_cpufreq_info ;
 int s3c_cpufreq_register (TYPE_2__*) ;
 int xtal ;

__attribute__((used)) static int s3c2412_cpufreq_add(struct device *dev,
          struct subsys_interface *sif)
{
 unsigned long fclk_rate;

 hclk = clk_get(((void*)0), "hclk");
 if (IS_ERR(hclk)) {
  pr_err("cannot find hclk clock\n");
  return -ENOENT;
 }

 fclk = clk_get(((void*)0), "fclk");
 if (IS_ERR(fclk)) {
  pr_err("cannot find fclk clock\n");
  goto err_fclk;
 }

 fclk_rate = clk_get_rate(fclk);
 if (fclk_rate > 200000000) {
  pr_info("fclk %ld MHz, assuming 266MHz capable part\n",
   fclk_rate / 1000000);
  s3c2412_cpufreq_info.max.fclk = 266000000;
  s3c2412_cpufreq_info.max.hclk = 133000000;
  s3c2412_cpufreq_info.max.pclk = 66000000;
 }

 armclk = clk_get(((void*)0), "armclk");
 if (IS_ERR(armclk)) {
  pr_err("cannot find arm clock\n");
  goto err_armclk;
 }

 xtal = clk_get(((void*)0), "xtal");
 if (IS_ERR(xtal)) {
  pr_err("cannot find xtal clock\n");
  goto err_xtal;
 }

 return s3c_cpufreq_register(&s3c2412_cpufreq_info);

err_xtal:
 clk_put(armclk);
err_armclk:
 clk_put(fclk);
err_fclk:
 clk_put(hclk);

 return -ENOENT;
}
