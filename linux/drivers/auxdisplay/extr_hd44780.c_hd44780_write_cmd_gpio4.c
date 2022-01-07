
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd44780 {int dummy; } ;
struct charlcd {struct hd44780* drvdata; } ;


 int hd44780_write_gpio4 (struct hd44780*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void hd44780_write_cmd_gpio4(struct charlcd *lcd, int cmd)
{
 struct hd44780 *hd = lcd->drvdata;

 hd44780_write_gpio4(hd, cmd, 0);


 udelay(120);
}
