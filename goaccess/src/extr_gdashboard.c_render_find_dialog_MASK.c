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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_2__ {int /*<<< orphan*/  pattern; scalar_t__ icase; } ;
typedef  int /*<<< orphan*/  GScroll ;

/* Variables and functions */
 int /*<<< orphan*/  FIND_DESC ; 
 int FIND_DLG_HEIGHT ; 
 int FIND_DLG_WIDTH ; 
 int /*<<< orphan*/  FIND_HEAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  color_panel_header ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ find_t ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int,int,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14 (WINDOW * main_win, GScroll * gscroll)
{
  int y, x, valid = 1;
  int w = FIND_DLG_WIDTH;
  int h = FIND_DLG_HEIGHT;
  char *query = NULL;
  WINDOW *win;

  FUNC3 (stdscr, y, x);

  win = FUNC7 (h, w, (y - h) / 2, (x - w) / 2);
  FUNC5 (win, TRUE);
  FUNC11 (win, '|', '|', '-', '-', '+', '+', '+', '+');
  FUNC1 (win, FIND_HEAD, " %s", 1, 1, w - 2, color_panel_header);
  FUNC6 (win, 2, 1, " %s", FIND_DESC);

  find_t.icase = 0;
  query = FUNC4 (win, 4, 2, w - 3, "", 1, &find_t.icase);
  if (query != NULL && *query != '\0') {
    FUNC9 (gscroll);
    FUNC8 ();
    find_t.pattern = FUNC13 (query);
    valid = 0;
  }
  if (query != NULL)
    FUNC2 (query);
  FUNC10 (main_win);
  FUNC0 (win);
  FUNC12 (main_win);

  return valid;
}