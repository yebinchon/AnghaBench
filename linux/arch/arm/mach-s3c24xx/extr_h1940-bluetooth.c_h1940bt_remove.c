
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct platform_device {int dummy; } ;


 int S3C2410_GPH (int) ;
 int gpio_free (int ) ;
 int h1940bt_enable (int ) ;
 struct rfkill* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_unregister (struct rfkill*) ;

__attribute__((used)) static int h1940bt_remove(struct platform_device *pdev)
{
 struct rfkill *rfk = platform_get_drvdata(pdev);

 platform_set_drvdata(pdev, ((void*)0));
 gpio_free(S3C2410_GPH(1));

 if (rfk) {
  rfkill_unregister(rfk);
  rfkill_destroy(rfk);
 }
 rfk = ((void*)0);

 h1940bt_enable(0);

 return 0;
}
