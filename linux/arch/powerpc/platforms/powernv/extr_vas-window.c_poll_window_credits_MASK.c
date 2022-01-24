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
typedef  scalar_t__ u64 ;
struct vas_window {int wcreds_max; scalar_t__ tx_win; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  LRX_WCRED ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  TX_WCRED ; 
 int /*<<< orphan*/  VAS_LRX_WCRED ; 
 int /*<<< orphan*/  VAS_TX_WCRED ; 
 int /*<<< orphan*/  VAS_WINCTL_RX_WCRED_MODE ; 
 int /*<<< orphan*/  VAS_WINCTL_TX_WCRED_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINCTL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct vas_window*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vas_window *window)
{
	u64 val;
	int creds, mode;

	val = FUNC3(window, FUNC1(WINCTL));
	if (window->tx_win)
		mode = FUNC0(VAS_WINCTL_TX_WCRED_MODE, val);
	else
		mode = FUNC0(VAS_WINCTL_RX_WCRED_MODE, val);

	if (!mode)
		return;
retry:
	if (window->tx_win) {
		val = FUNC3(window, FUNC1(TX_WCRED));
		creds = FUNC0(VAS_TX_WCRED, val);
	} else {
		val = FUNC3(window, FUNC1(LRX_WCRED));
		creds = FUNC0(VAS_LRX_WCRED, val);
	}

	if (creds < window->wcreds_max) {
		val = 0;
		FUNC5(TASK_UNINTERRUPTIBLE);
		FUNC4(FUNC2(10));
		goto retry;
	}
}