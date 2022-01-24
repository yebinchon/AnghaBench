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
struct driver_data {scalar_t__ mmio; int /*<<< orphan*/  dd_flag; } ;

/* Variables and functions */
 scalar_t__ HOST_CTL ; 
 int HOST_RESET ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct driver_data *dd)
{
	unsigned long timeout;

	/* Set the reset bit */
	FUNC5(HOST_RESET, dd->mmio + HOST_CTL);

	/* Flush */
	FUNC2(dd->mmio + HOST_CTL);

	/*
	 * Spin for up to 10 seconds waiting for reset acknowledgement. Spec
	 * is 1 sec but in LUN failure conditions, up to 10 secs are required
	 */
	timeout = jiffies + FUNC1(10000);
	do {
		FUNC0(10);
		if (FUNC3(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))
			return -1;

	} while ((FUNC2(dd->mmio + HOST_CTL) & HOST_RESET)
		 && FUNC4(jiffies, timeout));

	if (FUNC2(dd->mmio + HOST_CTL) & HOST_RESET)
		return -1;

	return 0;
}