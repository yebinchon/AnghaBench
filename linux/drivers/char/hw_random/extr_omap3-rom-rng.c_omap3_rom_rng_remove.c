
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 int hwrng_unregister (int *) ;
 int idle_work ;
 int omap3_rom_rng_ops ;
 int rng_clk ;

__attribute__((used)) static int omap3_rom_rng_remove(struct platform_device *pdev)
{
 cancel_delayed_work_sync(&idle_work);
 hwrng_unregister(&omap3_rom_rng_ops);
 clk_disable_unprepare(rng_clk);
 return 0;
}
