#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MIN_HEIGHT ; 
 int MIN_WIDTH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdscr ; 

void
FUNC5 (WINDOW ** header_win, WINDOW ** main_win)
{
  int row = 0, col = 0;

  /* init standard screen */
  FUNC1 (stdscr, row, col);
  if (row < MIN_HEIGHT || col < MIN_WIDTH)
    FUNC0 ("Minimum screen size - 0 columns by 7 lines");

  /* init header screen */
  *header_win = FUNC3 (6, col, 0, 0);
  FUNC2 (*header_win, TRUE);
  if (*header_win == NULL)
    FUNC0 ("Unable to allocate memory for header_win.");

  /* init main screen */
  *main_win = FUNC3 (row - 8, col, 7, 0);
  FUNC2 (*main_win, TRUE);
  if (*main_win == NULL)
    FUNC0 ("Unable to allocate memory for main_win.");
  FUNC4 (*main_win, *header_win);
}