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
struct cpufreq_policy {struct kobject kobj; } ;

/* Variables and functions */
 struct kobject* cpufreq_global_kobject ; 
 scalar_t__ FUNC0 () ; 

struct kobject *FUNC1(struct cpufreq_policy *policy)
{
	if (FUNC0())
		return &policy->kobj;
	else
		return cpufreq_global_kobject;
}