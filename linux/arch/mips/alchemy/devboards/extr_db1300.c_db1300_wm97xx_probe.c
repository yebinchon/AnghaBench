
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int pen_irq; } ;
struct platform_device {int dummy; } ;


 int DB1300_AC97_PEN_INT ;
 int WM97XX_GPIO_13 ;
 int WM97XX_GPIO_3 ;
 int WM97XX_GPIO_IN ;
 int WM97XX_GPIO_NOTSTICKY ;
 int WM97XX_GPIO_NOWAKE ;
 int WM97XX_GPIO_OUT ;
 int WM97XX_GPIO_POL_LOW ;
 int WM97XX_GPIO_STICKY ;
 int WM97XX_GPIO_WAKE ;
 int db1300_wm97xx_ops ;
 struct wm97xx* platform_get_drvdata (struct platform_device*) ;
 int wm97xx_config_gpio (struct wm97xx*,int ,int ,int ,int ,int ) ;
 int wm97xx_register_mach_ops (struct wm97xx*,int *) ;

__attribute__((used)) static int db1300_wm97xx_probe(struct platform_device *pdev)
{
 struct wm97xx *wm = platform_get_drvdata(pdev);


 wm97xx_config_gpio(wm, WM97XX_GPIO_13, WM97XX_GPIO_IN,
      WM97XX_GPIO_POL_LOW, WM97XX_GPIO_STICKY,
      WM97XX_GPIO_WAKE);


 wm97xx_config_gpio(wm, WM97XX_GPIO_3, WM97XX_GPIO_OUT,
      WM97XX_GPIO_POL_LOW, WM97XX_GPIO_NOTSTICKY,
      WM97XX_GPIO_NOWAKE);

 wm->pen_irq = DB1300_AC97_PEN_INT;

 return wm97xx_register_mach_ops(wm, &db1300_wm97xx_ops);
}
