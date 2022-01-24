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
struct kobject {int dummy; } ;
struct completion {int dummy; } ;
struct cpufreq_policy {int /*<<< orphan*/  rwsem; struct completion kobj_unregister; struct kobject kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct completion*) ; 

__attribute__((used)) static void FUNC6(struct cpufreq_policy *policy)
{
	struct kobject *kobj;
	struct completion *cmp;

	FUNC1(&policy->rwsem);
	FUNC0(policy);
	kobj = &policy->kobj;
	cmp = &policy->kobj_unregister;
	FUNC4(&policy->rwsem);
	FUNC2(kobj);

	/*
	 * We need to make sure that the underlying kobj is
	 * actually not referenced anymore by anybody before we
	 * proceed with unloading.
	 */
	FUNC3("waiting for dropping of refcount\n");
	FUNC5(cmp);
	FUNC3("wait complete\n");
}