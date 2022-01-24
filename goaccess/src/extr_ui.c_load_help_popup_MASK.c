#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_8__ {size_t size; struct TYPE_8__* items; struct TYPE_8__* name; scalar_t__ checked; } ;
typedef  TYPE_1__ GMenu ;
typedef  TYPE_1__ GItem ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HELPDLG_DESC ; 
 int /*<<< orphan*/  HELPDLG_HEAD ; 
 int /*<<< orphan*/  HELP_MENU_HEIGHT ; 
 int /*<<< orphan*/  HELP_MENU_WIDTH ; 
 int /*<<< orphan*/  HELP_MENU_X ; 
 int /*<<< orphan*/  HELP_MENU_Y ; 
 int HELP_WIN_HEIGHT ; 
 int HELP_WIN_WIDTH ; 
#define  KEY_DOWN 130 
#define  KEY_RESIZE 129 
#define  KEY_UP 128 
 int /*<<< orphan*/  REQ_DOWN ; 
 int /*<<< orphan*/  REQ_UP ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  color_panel_header ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * help_main ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char,char,char,char,char,char,char,char) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (size_t,int) ; 

void
FUNC17 (WINDOW * main_win)
{
  int c, quit = 1;
  size_t i, n;
  int y, x, h = HELP_WIN_HEIGHT, w = HELP_WIN_WIDTH;
  int w2 = w - 2;
  WINDOW *win;
  GMenu *menu;

  n = FUNC0 (help_main);
  FUNC5 (stdscr, y, x);

  win = FUNC10 (h, w, (y - h) / 2, (x - w) / 2);
  FUNC7 (win, TRUE);
  FUNC13 (win, '|', '|', '-', '-', '+', '+', '+', '+');

  /* create a new instance of GMenu and make it selectable */
  menu =
    FUNC9 (win, HELP_MENU_HEIGHT, HELP_MENU_WIDTH, HELP_MENU_Y,
               HELP_MENU_X);
  menu->size = n;

  /* add items to GMenu */
  menu->items = (GItem *) FUNC16 (n, sizeof (GItem));
  for (i = 0; i < n; ++i) {
    menu->items[i].name = FUNC1 (help_main[i]);
    menu->items[i].checked = 0;
  }
  FUNC11 (menu);

  FUNC3 (win, HELPDLG_HEAD, " %s", 1, 1, w2, color_panel_header);
  FUNC8 (win, 2, 2, HELPDLG_DESC);

  FUNC15 (win);
  while (quit) {
    c = FUNC14 (stdscr);
    switch (c) {
    case KEY_DOWN:
      FUNC6 (menu, REQ_DOWN);
      break;
    case KEY_UP:
      FUNC6 (menu, REQ_UP);
      break;
    case KEY_RESIZE:
    case 'q':
      quit = 0;
      break;
    }
    FUNC15 (win);
  }
  /* clean stuff up */
  for (i = 0; i < n; ++i)
    FUNC4 (menu->items[i].name);
  FUNC4 (menu->items);
  FUNC4 (menu);

  FUNC12 (main_win);
  FUNC2 (win);
  FUNC15 (main_win);
}