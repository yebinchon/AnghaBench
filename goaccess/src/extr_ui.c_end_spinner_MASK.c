#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ no_parsing_spinner; } ;
struct TYPE_3__ {int /*<<< orphan*/  curses; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPIN_UPDATE_INTERVAL ; 
 int /*<<< orphan*/  SPN_END ; 
 TYPE_2__ conf ; 
 TYPE_1__* parsing_spinner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  if (conf.no_parsing_spinner)
    return;

  FUNC0 (&parsing_spinner->mutex);
  parsing_spinner->state = SPN_END;
  FUNC1 (&parsing_spinner->mutex);
  if (!parsing_spinner->curses) {
    // wait for the ui_spinner thread to finish
    FUNC2(SPIN_UPDATE_INTERVAL);
  }
}