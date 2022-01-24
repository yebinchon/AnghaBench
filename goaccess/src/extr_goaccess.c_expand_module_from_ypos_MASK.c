#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int expanded; int /*<<< orphan*/  current; } ;

/* Variables and functions */
 int LINES ; 
 int MAX_HEIGHT_HEADER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ gscroll ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7 (int y)
{
  /* ignore header/footer clicks */
  if (y < MAX_HEIGHT_HEADER || y == LINES - 1)
    return;

  if (FUNC6 (&gscroll, dash, y))
    return;

  FUNC5 (&gscroll);
  gscroll.expanded = 1;

  FUNC3 (&holder, gscroll.current);
  FUNC2 (dash);
  FUNC1 (gscroll.current);
  FUNC0 ();

  FUNC4 ();
}