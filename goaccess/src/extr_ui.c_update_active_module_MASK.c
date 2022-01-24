#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {int attr; TYPE_1__* pair; } ;
struct TYPE_4__ {int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  GModule ;
typedef  TYPE_2__ GColors ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_ACTIVE_LABEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* T_ACTIVE_PANEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 
 int /*<<< orphan*/  stdscr ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (scalar_t__) ; 

void
FUNC14 (WINDOW * header_win, GModule current)
{
  GColors *color = FUNC2 (COLOR_ACTIVE_LABEL);
  const char *module = FUNC4 (current);
  int col = FUNC3 (stdscr);

  char *lbl = FUNC13 (FUNC6 (NULL, 0, T_ACTIVE_PANEL, module) + 1);
  FUNC7 (lbl, T_ACTIVE_PANEL, module);

  FUNC11 (header_win, 0, 30);

  FUNC10 (header_win, color->attr | FUNC0 (color->pair->idx));
  FUNC5 (header_win, 0, col - FUNC8 (lbl) - 1, "%s", lbl);
  FUNC9 (header_win, color->attr | FUNC0 (color->pair->idx));

  FUNC12 (header_win);

  FUNC1 (lbl);
}