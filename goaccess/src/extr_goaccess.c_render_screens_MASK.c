#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int processed; int offset; } ;
struct TYPE_10__ {int /*<<< orphan*/  current; } ;
struct TYPE_9__ {int attr; TYPE_1__* pair; } ;
struct TYPE_8__ {int /*<<< orphan*/  idx; } ;
typedef  TYPE_2__ GColors ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GO_VERSION ; 
 int /*<<< orphan*/  T_HELP_ENTER ; 
 int /*<<< orphan*/  T_QUIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  color_default ; 
 int /*<<< orphan*/  dash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_4__* glog ; 
 TYPE_3__ gscroll ; 
 int /*<<< orphan*/  header_win ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  main_win ; 
 int /*<<< orphan*/  main_win_height ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,char*,int,...) ; 
 int /*<<< orphan*/  now_tm ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16 (void)
{
  GColors *color = FUNC6 (COLOR_DEFAULT);
  int row, col, chg = 0;

  FUNC7 (stdscr, row, col);
  FUNC11 (main_win, &main_win_height);

  FUNC5 ();
  chg = glog->processed - glog->offset;

  FUNC4 (stdscr, "", "%s", row - 1, 0, col, color_default);

  FUNC14 (stdscr, color->attr | FUNC0 (color->pair->idx));
  FUNC8 (row - 1, 1, T_HELP_ENTER);
  FUNC9 (row - 1, 30, "%d - %s", chg, FUNC1 (now_tm));
  FUNC8 (row - 1, col - 21, T_QUIT);
  FUNC9 (row - 1, col - 5, "%s", GO_VERSION);
  FUNC13 (stdscr, color->attr | FUNC0 (color->pair->idx));

  FUNC10 ();

  /* call general stats header */
  FUNC3 (header_win, glog, holder);
  FUNC15 (header_win);

  /* display active label based on current module */
  FUNC12 (header_win, gscroll.current);

  FUNC2 (main_win, dash, &gscroll);
}