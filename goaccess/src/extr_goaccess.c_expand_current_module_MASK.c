#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int expanded; scalar_t__ current; } ;

/* Variables and functions */
 scalar_t__ HOSTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  dash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ gscroll ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  if (gscroll.expanded && gscroll.current == HOSTS) {
    FUNC4 ();
    return;
  }

  /* expanded, nothing to do... */
  if (gscroll.expanded)
    return;

  FUNC5 (&gscroll);
  gscroll.expanded = 1;

  FUNC3 (&holder, gscroll.current);
  FUNC2 (dash);
  FUNC1 (gscroll.current);
  FUNC0 ();
}