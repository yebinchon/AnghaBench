
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; } ;
struct TYPE_4__ {char* buf; int len; } ;
struct charlcd_priv {int flags; TYPE_2__ addr; TYPE_1__ esc_seq; } ;
struct charlcd {int bwidth; int width; int ifwidth; TYPE_3__* ops; } ;
struct TYPE_6__ {int (* write_cmd ) (struct charlcd*,int) ;int (* write_data ) (struct charlcd*,unsigned char) ;} ;


 int LCD_CMD_BLINK_ON ;
 int LCD_CMD_CURSOR_ON ;
 int LCD_CMD_DATA_LEN_8BITS ;
 int LCD_CMD_DISPLAY_CTRL ;
 int LCD_CMD_DISPLAY_ON ;
 int LCD_CMD_DISPLAY_SHIFT ;
 int LCD_CMD_FONT_5X10_DOTS ;
 int LCD_CMD_FUNCTION_SET ;
 unsigned char LCD_CMD_SET_CGRAM_ADDR ;
 int LCD_CMD_SHIFT ;
 int LCD_CMD_SHIFT_RIGHT ;
 int LCD_CMD_TWO_LINES ;
 int LCD_FLAG_B ;
 int LCD_FLAG_C ;
 int LCD_FLAG_D ;
 int LCD_FLAG_F ;
 int LCD_FLAG_L ;
 int LCD_FLAG_N ;
 int charlcd_backlight (struct charlcd*,int) ;
 int charlcd_gotoxy (struct charlcd*) ;
 int charlcd_init_display (struct charlcd*) ;
 int charlcd_poke (struct charlcd*) ;
 struct charlcd_priv* charlcd_to_priv (struct charlcd*) ;
 int parse_xy (char*,int*,int *) ;
 int strchr (char*,char) ;
 int stub1 (struct charlcd*,int) ;
 int stub2 (struct charlcd*,int) ;
 int stub3 (struct charlcd*,int) ;
 int stub4 (struct charlcd*,int) ;
 int stub5 (struct charlcd*,char) ;
 int stub6 (struct charlcd*,unsigned char) ;
 int stub7 (struct charlcd*,unsigned char) ;
 int stub8 (struct charlcd*,int) ;
 int stub9 (struct charlcd*,int) ;

__attribute__((used)) static inline int handle_lcd_special_code(struct charlcd *lcd)
{
 struct charlcd_priv *priv = charlcd_to_priv(lcd);



 int processed = 0;

 char *esc = priv->esc_seq.buf + 2;
 int oldflags = priv->flags;


 switch (*esc) {
 case 'D':
  priv->flags |= LCD_FLAG_D;
  processed = 1;
  break;
 case 'd':
  priv->flags &= ~LCD_FLAG_D;
  processed = 1;
  break;
 case 'C':
  priv->flags |= LCD_FLAG_C;
  processed = 1;
  break;
 case 'c':
  priv->flags &= ~LCD_FLAG_C;
  processed = 1;
  break;
 case 'B':
  priv->flags |= LCD_FLAG_B;
  processed = 1;
  break;
 case 'b':
  priv->flags &= ~LCD_FLAG_B;
  processed = 1;
  break;
 case '+':
  priv->flags |= LCD_FLAG_L;
  processed = 1;
  break;
 case '-':
  priv->flags &= ~LCD_FLAG_L;
  processed = 1;
  break;
 case '*':
  charlcd_poke(lcd);
  processed = 1;
  break;
 case 'f':
  priv->flags &= ~LCD_FLAG_F;
  processed = 1;
  break;
 case 'F':
  priv->flags |= LCD_FLAG_F;
  processed = 1;
  break;
 case 'n':
  priv->flags &= ~LCD_FLAG_N;
  processed = 1;
  break;
 case 'N':
  priv->flags |= LCD_FLAG_N;
  processed = 1;
  break;
 case 'l':
  if (priv->addr.x > 0) {

   if (priv->addr.x < lcd->bwidth)
    lcd->ops->write_cmd(lcd, LCD_CMD_SHIFT);
   priv->addr.x--;
  }
  processed = 1;
  break;
 case 'r':
  if (priv->addr.x < lcd->width) {

   if (priv->addr.x < (lcd->bwidth - 1))
    lcd->ops->write_cmd(lcd,
     LCD_CMD_SHIFT | LCD_CMD_SHIFT_RIGHT);
   priv->addr.x++;
  }
  processed = 1;
  break;
 case 'L':
  lcd->ops->write_cmd(lcd, LCD_CMD_SHIFT | LCD_CMD_DISPLAY_SHIFT);
  processed = 1;
  break;
 case 'R':
  lcd->ops->write_cmd(lcd,
        LCD_CMD_SHIFT | LCD_CMD_DISPLAY_SHIFT |
        LCD_CMD_SHIFT_RIGHT);
  processed = 1;
  break;
 case 'k': {
  int x;

  for (x = priv->addr.x; x < lcd->bwidth; x++)
   lcd->ops->write_data(lcd, ' ');


  charlcd_gotoxy(lcd);
  processed = 1;
  break;
 }
 case 'I':
  charlcd_init_display(lcd);
  processed = 1;
  break;
 case 'G': {
  unsigned char cgbytes[8];
  unsigned char cgaddr;
  int cgoffset;
  int shift;
  char value;
  int addr;

  if (!strchr(esc, ';'))
   break;

  esc++;

  cgaddr = *(esc++) - '0';
  if (cgaddr > 7) {
   processed = 1;
   break;
  }

  cgoffset = 0;
  shift = 0;
  value = 0;
  while (*esc && cgoffset < 8) {
   shift ^= 4;
   if (*esc >= '0' && *esc <= '9') {
    value |= (*esc - '0') << shift;
   } else if (*esc >= 'A' && *esc <= 'F') {
    value |= (*esc - 'A' + 10) << shift;
   } else if (*esc >= 'a' && *esc <= 'f') {
    value |= (*esc - 'a' + 10) << shift;
   } else {
    esc++;
    continue;
   }

   if (shift == 0) {
    cgbytes[cgoffset++] = value;
    value = 0;
   }

   esc++;
  }

  lcd->ops->write_cmd(lcd, LCD_CMD_SET_CGRAM_ADDR | (cgaddr * 8));
  for (addr = 0; addr < cgoffset; addr++)
   lcd->ops->write_data(lcd, cgbytes[addr]);


  charlcd_gotoxy(lcd);
  processed = 1;
  break;
 }
 case 'x':
 case 'y':
  if (priv->esc_seq.buf[priv->esc_seq.len - 1] != ';')
   break;


  if (parse_xy(esc, &priv->addr.x, &priv->addr.y))
   charlcd_gotoxy(lcd);


  processed = 1;
  break;
 }



 if (oldflags == priv->flags)
  return processed;


 if ((oldflags ^ priv->flags) &
     (LCD_FLAG_B | LCD_FLAG_C | LCD_FLAG_D))

  lcd->ops->write_cmd(lcd,
   LCD_CMD_DISPLAY_CTRL |
   ((priv->flags & LCD_FLAG_D) ? LCD_CMD_DISPLAY_ON : 0) |
   ((priv->flags & LCD_FLAG_C) ? LCD_CMD_CURSOR_ON : 0) |
   ((priv->flags & LCD_FLAG_B) ? LCD_CMD_BLINK_ON : 0));

 else if ((oldflags ^ priv->flags) & (LCD_FLAG_F | LCD_FLAG_N))
  lcd->ops->write_cmd(lcd,
   LCD_CMD_FUNCTION_SET |
   ((lcd->ifwidth == 8) ? LCD_CMD_DATA_LEN_8BITS : 0) |
   ((priv->flags & LCD_FLAG_F) ? LCD_CMD_FONT_5X10_DOTS : 0) |
   ((priv->flags & LCD_FLAG_N) ? LCD_CMD_TWO_LINES : 0));

 else if ((oldflags ^ priv->flags) & LCD_FLAG_L)
  charlcd_backlight(lcd, !!(priv->flags & LCD_FLAG_L));

 return processed;
}
