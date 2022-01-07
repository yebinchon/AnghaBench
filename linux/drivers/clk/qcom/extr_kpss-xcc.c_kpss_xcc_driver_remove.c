
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int clk_unregister_mux (int ) ;
 int platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int kpss_xcc_driver_remove(struct platform_device *pdev)
{
 clk_unregister_mux(platform_get_drvdata(pdev));
 return 0;
}
