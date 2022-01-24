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
struct TYPE_2__ {scalar_t__ mouse_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUTTON1_CLICKED ; 
 scalar_t__ ERR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ conf ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (void)
{
  FUNC4 ();
  FUNC1 ();
  FUNC8 ();
  FUNC3 (10);
  FUNC9 ();
  FUNC5 (stdscr, FALSE);
  FUNC6 (stdscr, TRUE);
  if (FUNC2 (0) == ERR)
    FUNC0 (("Unable to change cursor: %s\n", FUNC10 (errno)));

  if (conf.mouse_support)
    FUNC7 (BUTTON1_CLICKED, NULL);
}