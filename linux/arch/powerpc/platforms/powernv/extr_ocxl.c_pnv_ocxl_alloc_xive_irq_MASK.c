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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int FUNC4(u32 *irq, u64 *trigger_addr)
{
	__be64 flags, trigger_page;
	s64 rc;
	u32 hwirq;

	hwirq = FUNC2();
	if (!hwirq)
		return -ENOENT;

	rc = FUNC1(hwirq, &flags, NULL, &trigger_page, NULL,
				NULL);
	if (rc || !trigger_page) {
		FUNC3(hwirq);
		return -ENOENT;
	}
	*irq = hwirq;
	*trigger_addr = FUNC0(trigger_page);
	return 0;

}