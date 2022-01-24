#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct charlcd_priv {int flags; } ;
struct charlcd {int ifwidth; int height; TYPE_1__* ops; } ;
struct TYPE_2__ {void (* write_cmd_raw4 ) (struct charlcd*,int) ;void (* write_cmd ) (struct charlcd*,int) ;} ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (struct charlcd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct charlcd*) ; 
 struct charlcd_priv* FUNC2 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void FUNC4 (struct charlcd*,int) ; 
 void FUNC5 (struct charlcd*,int) ; 
 void FUNC6 (struct charlcd*,int) ; 
 void FUNC7 (struct charlcd*,int) ; 
 void FUNC8 (struct charlcd*,int) ; 

__attribute__((used)) static int FUNC9(struct charlcd *lcd)
{
	void (*write_cmd_raw)(struct charlcd *lcd, int cmd);
	struct charlcd_priv *priv = FUNC2(lcd);
	u8 init;

	if (lcd->ifwidth != 4 && lcd->ifwidth != 8)
		return -EINVAL;

	priv->flags = ((lcd->height > 1) ? LCD_FLAG_N : 0) | LCD_FLAG_D |
		      LCD_FLAG_C | LCD_FLAG_B;

	FUNC3(20);		/* wait 20 ms after power-up for the paranoid */

	/*
	 * 8-bit mode, 1 line, small fonts; let's do it 3 times, to make sure
	 * the LCD is in 8-bit mode afterwards
	 */
	init = LCD_CMD_FUNCTION_SET | LCD_CMD_DATA_LEN_8BITS;
	if (lcd->ifwidth == 4) {
		init >>= 4;
		write_cmd_raw = lcd->ops->write_cmd_raw4;
	} else {
		write_cmd_raw = lcd->ops->write_cmd;
	}
	write_cmd_raw(lcd, init);
	FUNC3(10);
	write_cmd_raw(lcd, init);
	FUNC3(10);
	write_cmd_raw(lcd, init);
	FUNC3(10);

	if (lcd->ifwidth == 4) {
		/* Switch to 4-bit mode, 1 line, small fonts */
		lcd->ops->write_cmd_raw4(lcd, LCD_CMD_FUNCTION_SET >> 4);
		FUNC3(10);
	}

	/* set font height and lines number */
	lcd->ops->write_cmd(lcd,
		LCD_CMD_FUNCTION_SET |
		((lcd->ifwidth == 8) ? LCD_CMD_DATA_LEN_8BITS : 0) |
		((priv->flags & LCD_FLAG_F) ? LCD_CMD_FONT_5X10_DOTS : 0) |
		((priv->flags & LCD_FLAG_N) ? LCD_CMD_TWO_LINES : 0));
	FUNC3(10);

	/* display off, cursor off, blink off */
	lcd->ops->write_cmd(lcd, LCD_CMD_DISPLAY_CTRL);
	FUNC3(10);

	lcd->ops->write_cmd(lcd,
		LCD_CMD_DISPLAY_CTRL |	/* set display mode */
		((priv->flags & LCD_FLAG_D) ? LCD_CMD_DISPLAY_ON : 0) |
		((priv->flags & LCD_FLAG_C) ? LCD_CMD_CURSOR_ON : 0) |
		((priv->flags & LCD_FLAG_B) ? LCD_CMD_BLINK_ON : 0));

	FUNC0(lcd, (priv->flags & LCD_FLAG_L) ? 1 : 0);

	FUNC3(10);

	/* entry mode set : increment, cursor shifting */
	lcd->ops->write_cmd(lcd, LCD_CMD_ENTRY_MODE | LCD_CMD_CURSOR_INC);

	FUNC1(lcd);
	return 0;
}