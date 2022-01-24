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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_T0_CFG ; 
 int HPET_TN_ENABLE ; 
 int /*<<< orphan*/  hpet_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	int cfg;

	FUNC2(&hpet_lock);

	cfg = FUNC0(HPET_T0_CFG);
	cfg &= ~HPET_TN_ENABLE;
	FUNC1(HPET_T0_CFG, cfg);

	FUNC3(&hpet_lock);
	return 0;
}