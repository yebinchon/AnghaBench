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
struct freq_attr {int /*<<< orphan*/  (* show ) (struct cpufreq_policy*,char*) ;} ;
struct cpufreq_policy {int /*<<< orphan*/  rwsem; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,char*) ; 
 struct freq_attr* FUNC2 (struct attribute*) ; 
 struct cpufreq_policy* FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj, struct attribute *attr, char *buf)
{
	struct cpufreq_policy *policy = FUNC3(kobj);
	struct freq_attr *fattr = FUNC2(attr);
	ssize_t ret;

	FUNC0(&policy->rwsem);
	ret = fattr->show(policy, buf);
	FUNC4(&policy->rwsem);

	return ret;
}