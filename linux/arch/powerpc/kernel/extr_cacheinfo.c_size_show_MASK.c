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
struct kobj_attribute {int dummy; } ;
struct cache {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ FUNC0 (struct cache*,unsigned int*) ; 
 struct cache* FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *k, struct kobj_attribute *attr, char *buf)
{
	unsigned int size_kb;
	struct cache *cache;

	cache = FUNC1(k);

	if (FUNC0(cache, &size_kb))
		return -ENODEV;

	return FUNC2(buf, "%uK\n", size_kb);
}