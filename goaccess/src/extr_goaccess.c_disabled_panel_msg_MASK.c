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
typedef  int /*<<< orphan*/  GModule ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_PANEL_DISABLED ; 
 int /*<<< orphan*/  color_error ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdscr ; 

__attribute__((used)) static void
FUNC3 (GModule module)
{
  const char *lbl = FUNC2 (module);
  int row, col;

  FUNC1 (stdscr, row, col);
  FUNC0 (stdscr, lbl, ERR_PANEL_DISABLED, row - 1, 0, col, color_error);
}