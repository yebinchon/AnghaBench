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
 scalar_t__ NUM_DEFAULT_NOTIFIERS ; 
 int /*<<< orphan*/  FUNC0 (struct mce*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_notifiers ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb, unsigned long val,
				void *data)
{
	struct mce *m = (struct mce *)data;

	if (!m)
		return NOTIFY_DONE;

	if (FUNC1(&num_notifiers) > NUM_DEFAULT_NOTIFIERS)
		return NOTIFY_DONE;

	FUNC0(m);

	return NOTIFY_DONE;
}