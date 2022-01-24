#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t len; char* buf; } ;
struct TYPE_5__ {int y; int /*<<< orphan*/  x; } ;
struct charlcd_priv {TYPE_3__ esc_seq; TYPE_2__ addr; } ;
struct charlcd {int height; TYPE_1__* ops; int /*<<< orphan*/  bwidth; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* write_data ) (struct charlcd*,char) ;int /*<<< orphan*/  (* write_cmd ) (struct charlcd*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_CMD_SHIFT ; 
#define  LCD_ESCAPE_CHAR 128 
 int LCD_ESCAPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct charlcd*,char) ; 
 struct charlcd_priv* FUNC4 (struct charlcd*) ; 
 int FUNC5 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct charlcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct charlcd*,char) ; 
 int /*<<< orphan*/  FUNC9 (struct charlcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct charlcd*,char) ; 

__attribute__((used)) static void FUNC11(struct charlcd *lcd, char c)
{
	struct charlcd_priv *priv = FUNC4(lcd);

	/* first, we'll test if we're in escape mode */
	if ((c != '\n') && priv->esc_seq.len >= 0) {
		/* yes, let's add this char to the buffer */
		priv->esc_seq.buf[priv->esc_seq.len++] = c;
		priv->esc_seq.buf[priv->esc_seq.len] = '\0';
	} else {
		/* aborts any previous escape sequence */
		priv->esc_seq.len = -1;

		switch (c) {
		case LCD_ESCAPE_CHAR:
			/* start of an escape sequence */
			priv->esc_seq.len = 0;
			priv->esc_seq.buf[priv->esc_seq.len] = '\0';
			break;
		case '\b':
			/* go back one char and clear it */
			if (priv->addr.x > 0) {
				/*
				 * check if we're not at the
				 * end of the line
				 */
				if (priv->addr.x < lcd->bwidth)
					/* back one char */
					lcd->ops->write_cmd(lcd, LCD_CMD_SHIFT);
				priv->addr.x--;
			}
			/* replace with a space */
			lcd->ops->write_data(lcd, ' ');
			/* back one char again */
			lcd->ops->write_cmd(lcd, LCD_CMD_SHIFT);
			break;
		case '\f':
			/* quickly clear the display */
			FUNC0(lcd);
			break;
		case '\n':
			/*
			 * flush the remainder of the current line and
			 * go to the beginning of the next line
			 */
			for (; priv->addr.x < lcd->bwidth; priv->addr.x++)
				lcd->ops->write_data(lcd, ' ');
			priv->addr.x = 0;
			priv->addr.y = (priv->addr.y + 1) % lcd->height;
			FUNC1(lcd);
			break;
		case '\r':
			/* go to the beginning of the same line */
			priv->addr.x = 0;
			FUNC1(lcd);
			break;
		case '\t':
			/* print a space instead of the tab */
			FUNC3(lcd, ' ');
			break;
		default:
			/* simply print this char */
			FUNC3(lcd, c);
			break;
		}
	}

	/*
	 * now we'll see if we're in an escape mode and if the current
	 * escape sequence can be understood.
	 */
	if (priv->esc_seq.len >= 2) {
		int processed = 0;

		if (!FUNC6(priv->esc_seq.buf, "[2J")) {
			/* clear the display */
			FUNC0(lcd);
			processed = 1;
		} else if (!FUNC6(priv->esc_seq.buf, "[H")) {
			/* cursor to home */
			FUNC2(lcd);
			processed = 1;
		}
		/* codes starting with ^[[L */
		else if ((priv->esc_seq.len >= 3) &&
			 (priv->esc_seq.buf[0] == '[') &&
			 (priv->esc_seq.buf[1] == 'L')) {
			processed = FUNC5(lcd);
		}

		/* LCD special escape codes */
		/*
		 * flush the escape sequence if it's been processed
		 * or if it is getting too long.
		 */
		if (processed || (priv->esc_seq.len >= LCD_ESCAPE_LEN))
			priv->esc_seq.len = -1;
	} /* escape codes */
}