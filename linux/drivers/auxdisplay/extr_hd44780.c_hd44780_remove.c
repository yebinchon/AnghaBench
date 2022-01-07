
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct charlcd {int dummy; } ;


 int charlcd_free (struct charlcd*) ;
 int charlcd_unregister (struct charlcd*) ;
 struct charlcd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hd44780_remove(struct platform_device *pdev)
{
 struct charlcd *lcd = platform_get_drvdata(pdev);

 charlcd_unregister(lcd);

 charlcd_free(lcd);
 return 0;
}
