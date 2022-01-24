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
struct notifier_block {int dummy; } ;
struct mce {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 scalar_t__ FUNC0 (struct mce*) ; 
 int /*<<< orphan*/  mce_need_notify ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mce*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb, unsigned long val,
			      void *data)
{
	struct mce *m = (struct mce *)data;

	if (!m)
		return NOTIFY_DONE;

	if (FUNC0(m))
		return NOTIFY_STOP;

	/* Emit the trace record: */
	FUNC3(m);

	FUNC2(0, &mce_need_notify);

	FUNC1();

	return NOTIFY_DONE;
}