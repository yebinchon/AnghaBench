
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raspberrypi_clk {int cpufreq; } ;
struct platform_device {int dummy; } ;


 int platform_device_unregister (int ) ;
 struct raspberrypi_clk* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int raspberrypi_clk_remove(struct platform_device *pdev)
{
 struct raspberrypi_clk *rpi = platform_get_drvdata(pdev);

 platform_device_unregister(rpi->cpufreq);

 return 0;
}
