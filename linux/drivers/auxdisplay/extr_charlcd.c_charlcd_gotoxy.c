
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; } ;
struct charlcd_priv {TYPE_2__ addr; } ;
struct charlcd {int bwidth; int hwidth; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write_cmd ) (struct charlcd*,unsigned int) ;} ;


 unsigned int LCD_CMD_SET_DDRAM_ADDR ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int stub1 (struct charlcd*,unsigned int) ;

__attribute__((used)) static void charlcd_gotoxy(struct charlcd *lcd)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);
 unsigned int addr;





 addr = priv->addr.x < lcd->bwidth ? priv->addr.x & (lcd->hwidth - 1)
       : lcd->bwidth - 1;
 if (priv->addr.y & 1)
  addr += lcd->hwidth;
 if (priv->addr.y & 2)
  addr += lcd->bwidth;
 lcd->ops->write_cmd(lcd, LCD_CMD_SET_DDRAM_ADDR | addr);
}
