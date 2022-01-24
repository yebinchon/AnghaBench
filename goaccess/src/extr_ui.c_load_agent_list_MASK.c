#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_9__ {int /*<<< orphan*/  list_agents; } ;
struct TYPE_8__ {int size; struct TYPE_8__* items; struct TYPE_8__* name; } ;
typedef  TYPE_1__ GMenu ;

/* Variables and functions */
 int /*<<< orphan*/  AGENTSDLG_DESC ; 
 char* AGENTSDLG_HEAD ; 
 int AGENTS_MENU_X ; 
 int AGENTS_MENU_Y ; 
#define  KEY_DOWN 130 
#define  KEY_RESIZE 129 
#define  KEY_UP 128 
 int /*<<< orphan*/  REQ_DOWN ; 
 int /*<<< orphan*/  REQ_UP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  color_panel_header ; 
 TYPE_7__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  load_host_agents_gmenu ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char,char,char,char,char,char,char,char) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void
FUNC16 (WINDOW * main_win, char *addr)
{
  GMenu *menu;
  WINDOW *win;

  char buf[256];
  int c, quit = 1, i;
  int y, x, list_h, list_w, menu_w, menu_h;

  if (!conf.list_agents)
    return;

  FUNC3 (stdscr, y, x);
  list_h = y / 2;       /* list window - height */
  list_w = x - 4;       /* list window - width */
  menu_h = list_h - AGENTS_MENU_Y - 1;  /* menu window - height */
  menu_w = list_w - AGENTS_MENU_X - AGENTS_MENU_X;      /* menu window - width */

  win = FUNC8 (list_h, list_w, (y - list_h) / 2, (x - list_w) / 2);
  FUNC5 (win, TRUE);
  FUNC13 (win, '|', '|', '-', '-', '+', '+', '+', '+');

  /* create a new instance of GMenu and make it selectable */
  menu = FUNC7 (win, menu_h, menu_w, AGENTS_MENU_Y, AGENTS_MENU_X);
  if (FUNC10 (addr, load_host_agents_gmenu, menu) == 1)
    goto out;

  FUNC9 (menu);
  FUNC11 (buf, sizeof buf, AGENTSDLG_HEAD, addr);
  FUNC1 (win, buf, " %s", 1, 1, list_w - 2, color_panel_header);
  FUNC6 (win, 2, 2, AGENTSDLG_DESC);
  FUNC15 (win);

  while (quit) {
    c = FUNC14 (stdscr);
    switch (c) {
    case KEY_DOWN:
      FUNC4 (menu, REQ_DOWN);
      break;
    case KEY_UP:
      FUNC4 (menu, REQ_UP);
      break;
    case KEY_RESIZE:
    case 'q':
      quit = 0;
      break;
    }
    FUNC15 (win);
  }

  FUNC12 (main_win);
  FUNC0 (win);
  FUNC15 (main_win);

out:

  /* clean stuff up */
  for (i = 0; i < menu->size; ++i)
    FUNC2 (menu->items[i].name);
  if (menu->items)
    FUNC2 (menu->items);
  FUNC2 (menu);
}