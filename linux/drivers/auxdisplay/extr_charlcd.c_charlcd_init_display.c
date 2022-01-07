
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct charlcd_priv {int flags; } ;
struct charlcd {int ifwidth; int height; TYPE_1__* ops; } ;
struct TYPE_2__ {void (* write_cmd_raw4 ) (struct charlcd*,int) ;void (* write_cmd ) (struct charlcd*,int) ;} ;


 int EINVAL ;
 int LCD_CMD_BLINK_ON ;
 int LCD_CMD_CURSOR_INC ;
 int LCD_CMD_CURSOR_ON ;
 int LCD_CMD_DATA_LEN_8BITS ;
 int LCD_CMD_DISPLAY_CTRL ;
 int LCD_CMD_DISPLAY_ON ;
 int LCD_CMD_ENTRY_MODE ;
 int LCD_CMD_FONT_5X10_DOTS ;
 int LCD_CMD_FUNCTION_SET ;
 int LCD_CMD_TWO_LINES ;
 int LCD_FLAG_B ;
 int LCD_FLAG_C ;
 int LCD_FLAG_D ;
 int LCD_FLAG_F ;
 int LCD_FLAG_L ;
 int LCD_FLAG_N ;
 int charlcd_backlight (struct charlcd*,int) ;
 int charlcd_clear_display (struct charlcd*) ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int long_sleep (int) ;
 void stub1 (struct charlcd*,int) ;
 void stub2 (struct charlcd*,int) ;
 void stub3 (struct charlcd*,int) ;
 void stub4 (struct charlcd*,int) ;
 void stub5 (struct charlcd*,int) ;

__attribute__((used)) static int charlcd_init_display(struct charlcd *lcd)
{
 void (*write_cmd_raw)(struct charlcd *lcd, int cmd);
 struct charlcd_priv *priv = charlcd_to_priv(lcd);
 u8 init;

 if (lcd->ifwidth != 4 && lcd->ifwidth != 8)
  return -EINVAL;

 priv->flags = ((lcd->height > 1) ? LCD_FLAG_N : 0) | LCD_FLAG_D |
        LCD_FLAG_C | LCD_FLAG_B;

 long_sleep(20);





 init = LCD_CMD_FUNCTION_SET | LCD_CMD_DATA_LEN_8BITS;
 if (lcd->ifwidth == 4) {
  init >>= 4;
  write_cmd_raw = lcd->ops->write_cmd_raw4;
 } else {
  write_cmd_raw = lcd->ops->write_cmd;
 }
 write_cmd_raw(lcd, init);
 long_sleep(10);
 write_cmd_raw(lcd, init);
 long_sleep(10);
 write_cmd_raw(lcd, init);
 long_sleep(10);

 if (lcd->ifwidth == 4) {

  lcd->ops->write_cmd_raw4(lcd, LCD_CMD_FUNCTION_SET >> 4);
  long_sleep(10);
 }


 lcd->ops->write_cmd(lcd,
  LCD_CMD_FUNCTION_SET |
  ((lcd->ifwidth == 8) ? LCD_CMD_DATA_LEN_8BITS : 0) |
  ((priv->flags & LCD_FLAG_F) ? LCD_CMD_FONT_5X10_DOTS : 0) |
  ((priv->flags & LCD_FLAG_N) ? LCD_CMD_TWO_LINES : 0));
 long_sleep(10);


 lcd->ops->write_cmd(lcd, LCD_CMD_DISPLAY_CTRL);
 long_sleep(10);

 lcd->ops->write_cmd(lcd,
  LCD_CMD_DISPLAY_CTRL |
  ((priv->flags & LCD_FLAG_D) ? LCD_CMD_DISPLAY_ON : 0) |
  ((priv->flags & LCD_FLAG_C) ? LCD_CMD_CURSOR_ON : 0) |
  ((priv->flags & LCD_FLAG_B) ? LCD_CMD_BLINK_ON : 0));

 charlcd_backlight(lcd, (priv->flags & LCD_FLAG_L) ? 1 : 0);

 long_sleep(10);


 lcd->ops->write_cmd(lcd, LCD_CMD_ENTRY_MODE | LCD_CMD_CURSOR_INC);

 charlcd_clear_display(lcd);
 return 0;
}
