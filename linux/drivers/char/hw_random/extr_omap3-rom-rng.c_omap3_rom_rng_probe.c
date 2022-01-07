
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int INIT_DELAYED_WORK (int *,int (*) (int )) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int hwrng_register (int *) ;
 int idle_work ;
 int omap3_rom_rng_call ;
 int omap3_rom_rng_idle (int ) ;
 int omap3_rom_rng_ops ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int rng_clk ;

__attribute__((used)) static int omap3_rom_rng_probe(struct platform_device *pdev)
{
 int ret = 0;

 pr_info("initializing\n");

 omap3_rom_rng_call = pdev->dev.platform_data;
 if (!omap3_rom_rng_call) {
  pr_err("omap3_rom_rng_call is NULL\n");
  return -EINVAL;
 }

 INIT_DELAYED_WORK(&idle_work, omap3_rom_rng_idle);
 rng_clk = devm_clk_get(&pdev->dev, "ick");
 if (IS_ERR(rng_clk)) {
  pr_err("unable to get RNG clock\n");
  return PTR_ERR(rng_clk);
 }


 ret = clk_prepare_enable(rng_clk);
 if (ret)
  return ret;
 omap3_rom_rng_idle(0);

 return hwrng_register(&omap3_rom_rng_ops);
}
