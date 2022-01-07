
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t len; char* buf; } ;
struct TYPE_5__ {int y; int x; } ;
struct charlcd_priv {TYPE_3__ esc_seq; TYPE_2__ addr; } ;
struct charlcd {int height; TYPE_1__* ops; int bwidth; } ;
struct TYPE_4__ {int (* write_data ) (struct charlcd*,char) ;int (* write_cmd ) (struct charlcd*,int ) ;} ;


 int LCD_CMD_SHIFT ;

 int LCD_ESCAPE_LEN ;
 int charlcd_clear_fast (struct charlcd*) ;
 int charlcd_gotoxy (struct charlcd*) ;
 int charlcd_home (struct charlcd*) ;
 int charlcd_print (struct charlcd*,char) ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int handle_lcd_special_code (struct charlcd*) ;
 int strcmp (char*,char*) ;
 int stub1 (struct charlcd*,int ) ;
 int stub2 (struct charlcd*,char) ;
 int stub3 (struct charlcd*,int ) ;
 int stub4 (struct charlcd*,char) ;

__attribute__((used)) static void charlcd_write_char(struct charlcd *lcd, char c)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);


 if ((c != '\n') && priv->esc_seq.len >= 0) {

  priv->esc_seq.buf[priv->esc_seq.len++] = c;
  priv->esc_seq.buf[priv->esc_seq.len] = '\0';
 } else {

  priv->esc_seq.len = -1;

  switch (c) {
  case 128:

   priv->esc_seq.len = 0;
   priv->esc_seq.buf[priv->esc_seq.len] = '\0';
   break;
  case '\b':

   if (priv->addr.x > 0) {




    if (priv->addr.x < lcd->bwidth)

     lcd->ops->write_cmd(lcd, LCD_CMD_SHIFT);
    priv->addr.x--;
   }

   lcd->ops->write_data(lcd, ' ');

   lcd->ops->write_cmd(lcd, LCD_CMD_SHIFT);
   break;
  case '\f':

   charlcd_clear_fast(lcd);
   break;
  case '\n':




   for (; priv->addr.x < lcd->bwidth; priv->addr.x++)
    lcd->ops->write_data(lcd, ' ');
   priv->addr.x = 0;
   priv->addr.y = (priv->addr.y + 1) % lcd->height;
   charlcd_gotoxy(lcd);
   break;
  case '\r':

   priv->addr.x = 0;
   charlcd_gotoxy(lcd);
   break;
  case '\t':

   charlcd_print(lcd, ' ');
   break;
  default:

   charlcd_print(lcd, c);
   break;
  }
 }





 if (priv->esc_seq.len >= 2) {
  int processed = 0;

  if (!strcmp(priv->esc_seq.buf, "[2J")) {

   charlcd_clear_fast(lcd);
   processed = 1;
  } else if (!strcmp(priv->esc_seq.buf, "[H")) {

   charlcd_home(lcd);
   processed = 1;
  }

  else if ((priv->esc_seq.len >= 3) &&
    (priv->esc_seq.buf[0] == '[') &&
    (priv->esc_seq.buf[1] == 'L')) {
   processed = handle_lcd_special_code(lcd);
  }






  if (processed || (priv->esc_seq.len >= LCD_ESCAPE_LEN))
   priv->esc_seq.len = -1;
 }
}
