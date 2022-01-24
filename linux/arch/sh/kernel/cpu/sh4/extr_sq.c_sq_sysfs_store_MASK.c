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
struct sq_sysfs_attr {int /*<<< orphan*/  (* store ) (char const*,size_t) ;} ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  (*) (char const*,size_t)) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 
 struct sq_sysfs_attr* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct attribute *attr,
			      const char *buf, size_t count)
{
	struct sq_sysfs_attr *sattr = FUNC2(attr);

	if (FUNC0(sattr->store))
		return sattr->store(buf, count);

	return -EIO;
}