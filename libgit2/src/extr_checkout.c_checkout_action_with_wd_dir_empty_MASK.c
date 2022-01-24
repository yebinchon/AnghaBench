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
typedef  int /*<<< orphan*/  git_diff_delta ;
typedef  int /*<<< orphan*/  checkout_data ;

/* Variables and functions */
 int CHECKOUT_ACTION__NONE ; 
 int CHECKOUT_ACTION__REMOVE ; 
 int FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(
	int *action,
	checkout_data *data,
	const git_diff_delta *delta)
{
	int error = FUNC0(action, data, delta);

	/* We can always safely remove an empty directory. */
	if (error == 0 && *action != CHECKOUT_ACTION__NONE)
		*action |= CHECKOUT_ACTION__REMOVE;

	return error;
}