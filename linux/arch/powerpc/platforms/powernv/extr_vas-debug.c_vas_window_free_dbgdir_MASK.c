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
struct vas_window {int /*<<< orphan*/ * dbgname; int /*<<< orphan*/ * dbgdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct vas_window *window)
{
	if (window->dbgdir) {
		FUNC0(window->dbgdir);
		FUNC1(window->dbgname);
		window->dbgdir = NULL;
		window->dbgname = NULL;
	}
}