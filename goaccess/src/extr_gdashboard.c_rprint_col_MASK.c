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
typedef  TYPE_2__ GColors ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COLOR_PANEL_COLS ; 
 scalar_t__ DASH_SPACE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6 (WINDOW * win, int y, int *x, int len, const char *fmt,
            const char *str)
{
  GColors *color = FUNC1 (COLOR_PANEL_COLS);

  FUNC5 (win, color->attr | FUNC0 (color->pair->idx));
  FUNC2 (win, y, *x, fmt, len, str);
  FUNC3 (win, y + 1, *x, len);
  FUNC4 (win, color->attr | FUNC0 (color->pair->idx));

  *x += len + DASH_SPACE;
}