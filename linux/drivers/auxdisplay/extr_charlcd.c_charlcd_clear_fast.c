
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charlcd {int hwidth; TYPE_1__* ops; int height; } ;
struct TYPE_2__ {int (* write_data ) (struct charlcd*,char) ;int (* clear_fast ) (struct charlcd*) ;} ;


 int charlcd_home (struct charlcd*) ;
 int min (int,int ) ;
 int stub1 (struct charlcd*) ;
 int stub2 (struct charlcd*,char) ;

__attribute__((used)) static void charlcd_clear_fast(struct charlcd *lcd)
{
 int pos;

 charlcd_home(lcd);

 if (lcd->ops->clear_fast)
  lcd->ops->clear_fast(lcd);
 else
  for (pos = 0; pos < min(2, lcd->height) * lcd->hwidth; pos++)
   lcd->ops->write_data(lcd, ' ');

 charlcd_home(lcd);
}
