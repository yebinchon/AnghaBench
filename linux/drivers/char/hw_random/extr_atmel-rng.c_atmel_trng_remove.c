
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct atmel_trng {int clk; } ;


 int atmel_trng_disable (struct atmel_trng*) ;
 int clk_disable_unprepare (int ) ;
 struct atmel_trng* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int atmel_trng_remove(struct platform_device *pdev)
{
 struct atmel_trng *trng = platform_get_drvdata(pdev);


 atmel_trng_disable(trng);
 clk_disable_unprepare(trng->clk);

 return 0;
}
