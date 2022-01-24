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
struct seq_file {int dummy; } ;
struct drbd_thread_timing_details {scalar_t__ cb_nr; int /*<<< orphan*/  cb_addr; int /*<<< orphan*/  line; int /*<<< orphan*/  caller_fn; scalar_t__ start_jif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m,
	const struct drbd_thread_timing_details *tdp,
	unsigned long now)
{
	struct drbd_thread_timing_details td;
	/* No locking...
	 * use temporary assignment to get at consistent data. */
	do {
		td = *tdp;
	} while (td.cb_nr != tdp->cb_nr);
	if (!td.cb_addr)
		return;
	FUNC1(m, "%u\t%d\t%s:%u\t%ps\n",
			td.cb_nr,
			FUNC0(now - td.start_jif),
			td.caller_fn, td.line,
			td.cb_addr);
}