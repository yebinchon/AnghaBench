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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {int /*<<< orphan*/  atr; } ;
struct TYPE_4__ {int /*<<< orphan*/  atr; } ;
struct TYPE_6__ {TYPE_2__ dialog; TYPE_1__ border; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_LTEE ; 
 int /*<<< orphan*/  ACS_RTEE ; 
 int ERRDISPLAYTOOSMALL ; 
#define  KEY_ESC 132 
#define  KEY_LEFT 131 
#define  KEY_RESIZE 130 
#define  KEY_RIGHT 129 
#define  TAB 128 
 int /*<<< orphan*/  TRUE ; 
 int YESNO_HEIGTH_MIN ; 
 int YESNO_WIDTH_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ dlg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(const char *title, const char *prompt, int height, int width)
{
	int i, x, y, key = 0, button = 0;
	WINDOW *dialog;

do_resize:
	if (FUNC4(stdscr) < (height + YESNO_HEIGTH_MIN))
		return -ERRDISPLAYTOOSMALL;
	if (FUNC3(stdscr) < (width + YESNO_WIDTH_MIN))
		return -ERRDISPLAYTOOSMALL;

	/* center dialog box on screen */
	x = (FUNC3(stdscr) - width) / 2;
	y = (FUNC4(stdscr) - height) / 2;

	FUNC2(stdscr, y, x, height, width);

	dialog = FUNC7(height, width, y, x);
	FUNC5(dialog, TRUE);

	FUNC1(dialog, 0, 0, height, width,
		 dlg.dialog.atr, dlg.border.atr);
	FUNC14(dialog, dlg.border.atr);
	FUNC6(dialog, height - 3, 0, ACS_LTEE);
	for (i = 0; i < width - 2; i++)
		FUNC13(dialog, ACS_HLINE);
	FUNC14(dialog, dlg.dialog.atr);
	FUNC13(dialog, ACS_RTEE);

	FUNC12(dialog, title, width);

	FUNC14(dialog, dlg.dialog.atr);
	FUNC10(dialog, prompt, width - 2, 1, 3);

	FUNC11(dialog, height, width, 0);

	while (key != KEY_ESC) {
		key = FUNC15(dialog);
		switch (key) {
		case 'Y':
		case 'y':
			FUNC0(dialog);
			return 0;
		case 'N':
		case 'n':
			FUNC0(dialog);
			return 1;

		case TAB:
		case KEY_LEFT:
		case KEY_RIGHT:
			button = ((key == KEY_LEFT ? --button : ++button) < 0) ? 1 : (button > 1 ? 0 : button);

			FUNC11(dialog, height, width, button);
			FUNC16(dialog);
			break;
		case ' ':
		case '\n':
			FUNC0(dialog);
			return button;
		case KEY_ESC:
			key = FUNC8(dialog);
			break;
		case KEY_RESIZE:
			FUNC0(dialog);
			FUNC9();
			goto do_resize;
		}
	}

	FUNC0(dialog);
	return key;		/* ESC pressed */
}