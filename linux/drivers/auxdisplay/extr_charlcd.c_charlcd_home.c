
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;
struct charlcd_priv {TYPE_1__ addr; } ;
struct charlcd {int dummy; } ;


 int charlcd_gotoxy (struct charlcd*) ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;

__attribute__((used)) static void charlcd_home(struct charlcd *lcd)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);

 priv->addr.x = 0;
 priv->addr.y = 0;
 charlcd_gotoxy(lcd);
}
