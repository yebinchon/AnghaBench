
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; } ;
struct charlcd_priv {TYPE_1__ addr; } ;
struct charlcd {scalar_t__ bwidth; char* char_conv; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* write_data ) (struct charlcd*,char) ;} ;


 int charlcd_gotoxy (struct charlcd*) ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int stub1 (struct charlcd*,char) ;

__attribute__((used)) static void charlcd_print(struct charlcd *lcd, char c)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);

 if (priv->addr.x < lcd->bwidth) {
  if (lcd->char_conv)
   c = lcd->char_conv[(unsigned char)c];
  lcd->ops->write_data(lcd, c);
  priv->addr.x++;


  if (priv->addr.x == lcd->bwidth)
   charlcd_gotoxy(lcd);
 }
}
