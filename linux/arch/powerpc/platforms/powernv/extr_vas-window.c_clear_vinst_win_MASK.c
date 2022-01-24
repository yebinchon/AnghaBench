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
struct vas_window {int winid; size_t cop; int /*<<< orphan*/  tx_win; int /*<<< orphan*/  user_win; struct vas_instance* vinst; } ;
struct vas_instance {int /*<<< orphan*/  mutex; struct vas_window** windows; int /*<<< orphan*/ ** rxwin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vas_window *window)
{
	int id = window->winid;
	struct vas_instance *vinst = window->vinst;

	FUNC1(&vinst->mutex);

	if (!window->user_win && !window->tx_win) {
		FUNC0(!vinst->rxwin[window->cop]);
		vinst->rxwin[window->cop] = NULL;
	}

	FUNC0(vinst->windows[id] != window);
	vinst->windows[id] = NULL;

	FUNC2(&vinst->mutex);
}