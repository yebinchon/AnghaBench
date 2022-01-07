
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pic32_rng {int clk; scalar_t__ base; int rng; } ;


 scalar_t__ RNGCON ;
 int clk_disable_unprepare (int ) ;
 int hwrng_unregister (int *) ;
 struct pic32_rng* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pic32_rng_remove(struct platform_device *pdev)
{
 struct pic32_rng *rng = platform_get_drvdata(pdev);

 hwrng_unregister(&rng->rng);
 writel(0, rng->base + RNGCON);
 clk_disable_unprepare(rng->clk);
 return 0;
}
