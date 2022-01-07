
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct adc_device {int vdd; int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct adc_device* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int s3c_adc_remove(struct platform_device *pdev)
{
 struct adc_device *adc = platform_get_drvdata(pdev);

 clk_disable_unprepare(adc->clk);
 regulator_disable(adc->vdd);

 return 0;
}
