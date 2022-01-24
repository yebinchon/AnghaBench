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
 int /*<<< orphan*/  COMPARE ; 
 int /*<<< orphan*/  MFGPT0_CMP2 ; 
 int /*<<< orphan*/  MFGPT0_CNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  mfgpt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	FUNC2(&mfgpt_lock);

	FUNC1(COMPARE, MFGPT0_CMP2);	/* set comparator2 */
	FUNC1(0, MFGPT0_CNT);		/* set counter to 0 */
	FUNC0();

	FUNC3(&mfgpt_lock);
	return 0;
}