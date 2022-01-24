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
struct ccu_policy {int dummy; } ;
struct ccu_data {int /*<<< orphan*/  name; struct ccu_policy policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccu_data*) ; 
 scalar_t__ FUNC1 (struct ccu_policy*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccu_policy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ccu_data *ccu)
{
	struct ccu_policy *ccu_policy;

	if (!FUNC0(ccu))
		return false;

	ccu_policy = &ccu->policy;
	if (FUNC1(ccu_policy))
		if (!FUNC2(ccu_policy, ccu->name))
			return false;

	return true;
}