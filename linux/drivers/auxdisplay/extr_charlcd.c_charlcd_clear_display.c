
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
struct charlcd_priv {TYPE_2__ addr; } ;
struct charlcd {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write_cmd ) (struct charlcd*,int ) ;} ;


 int LCD_CMD_DISPLAY_CLEAR ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int long_sleep (int) ;
 int stub1 (struct charlcd*,int ) ;

__attribute__((used)) static void charlcd_clear_display(struct charlcd *lcd)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);

 lcd->ops->write_cmd(lcd, LCD_CMD_DISPLAY_CLEAR);
 priv->addr.x = 0;
 priv->addr.y = 0;

 long_sleep(15);
}
