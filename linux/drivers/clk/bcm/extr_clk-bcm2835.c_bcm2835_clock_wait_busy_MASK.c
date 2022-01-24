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
struct bcm2835_cprman {int /*<<< orphan*/  dev; } ;
struct bcm2835_clock_data {int /*<<< orphan*/  ctl_reg; } ;
struct bcm2835_clock {int /*<<< orphan*/  hw; struct bcm2835_clock_data* data; struct bcm2835_cprman* cprman; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CM_BUSY ; 
 int /*<<< orphan*/  LOCK_TIMEOUT_NS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bcm2835_cprman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct bcm2835_clock *clock)
{
	struct bcm2835_cprman *cprman = clock->cprman;
	const struct bcm2835_clock_data *data = clock->data;
	ktime_t timeout = FUNC4(FUNC6(), LOCK_TIMEOUT_NS);

	while (FUNC1(cprman, data->ctl_reg) & CM_BUSY) {
		if (FUNC5(FUNC6(), timeout)) {
			FUNC3(cprman->dev, "%s: couldn't lock PLL\n",
				FUNC0(&clock->hw));
			return;
		}
		FUNC2();
	}
}