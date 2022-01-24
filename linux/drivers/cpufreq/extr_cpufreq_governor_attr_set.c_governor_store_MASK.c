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
struct governor_attr {int (* store ) (struct gov_attr_set*,char const*,size_t) ;} ;
struct gov_attr_set {int /*<<< orphan*/  update_lock; scalar_t__ usage_count; } ;
struct attribute {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gov_attr_set*,char const*,size_t) ; 
 struct governor_attr* FUNC3 (struct attribute*) ; 
 struct gov_attr_set* FUNC4 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj, struct attribute *attr,
			      const char *buf, size_t count)
{
	struct gov_attr_set *attr_set = FUNC4(kobj);
	struct governor_attr *gattr = FUNC3(attr);
	int ret;

	FUNC0(&attr_set->update_lock);
	ret = attr_set->usage_count ? gattr->store(attr_set, buf, count) : -EBUSY;
	FUNC1(&attr_set->update_lock);
	return ret;
}