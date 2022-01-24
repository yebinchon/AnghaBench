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
struct vas_window {int /*<<< orphan*/  rxwin; scalar_t__ tx_win; int /*<<< orphan*/  num_txwins; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC3 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC4 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC5 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC9 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC10 (struct vas_window*) ; 

int FUNC11(struct vas_window *window)
{
	if (!window)
		return 0;

	if (!window->tx_win && FUNC1(&window->num_txwins) != 0) {
		FUNC6("Attempting to close an active Rx window!\n");
		FUNC0(1);
		return -EBUSY;
	}

	FUNC8(window);

	FUNC2(window);

	FUNC3(window);

	FUNC9(window);

	FUNC5(window);

	FUNC4(window);

	/* if send window, drop reference to matching receive window */
	if (window->tx_win)
		FUNC7(window->rxwin);

	FUNC10(window);

	return 0;
}