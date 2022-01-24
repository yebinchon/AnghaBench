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
struct sf_buffer {unsigned long num_sdb; } ;
struct hw_perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,unsigned long,...) ; 
 int FUNC1 (struct sf_buffer*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct sf_buffer*,struct hw_perf_event*) ; 
 unsigned long FUNC4 (struct sf_buffer*,struct hw_perf_event*) ; 
 int /*<<< orphan*/  sfdbg ; 

__attribute__((used)) static void FUNC5(struct sf_buffer *sfb,
				   struct hw_perf_event *hwc)
{
	unsigned long num, num_old;
	int rc;

	num = FUNC4(sfb, hwc);
	if (!num)
		return;
	num_old = sfb->num_sdb;

	/* Disable the sampling facility to reset any states and also
	 * clear pending measurement alerts.
	 */
	FUNC2();

	/* Extend the sampling buffer.
	 * This memory allocation typically happens in an atomic context when
	 * called by perf.  Because this is a reallocation, it is fine if the
	 * new SDB-request cannot be satisfied immediately.
	 */
	rc = FUNC1(sfb, num, GFP_ATOMIC);
	if (rc)
		FUNC0(sfdbg, 5, "sfb: extend: realloc "
				    "failed with rc=%i\n", rc);

	if (FUNC3(sfb, hwc))
		FUNC0(sfdbg, 5, "sfb: extend: "
				    "req=%lu alloc=%lu remaining=%lu\n",
				    num, sfb->num_sdb - num_old,
				    FUNC4(sfb, hwc));
}