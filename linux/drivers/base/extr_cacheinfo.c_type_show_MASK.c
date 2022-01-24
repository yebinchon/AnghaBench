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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cacheinfo {int type; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  CACHE_TYPE_DATA 130 
#define  CACHE_TYPE_INST 129 
#define  CACHE_TYPE_UNIFIED 128 
 int /*<<< orphan*/  EINVAL ; 
 struct cacheinfo* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			 struct device_attribute *attr, char *buf)
{
	struct cacheinfo *this_leaf = FUNC0(dev);

	switch (this_leaf->type) {
	case CACHE_TYPE_DATA:
		return FUNC1(buf, "Data\n");
	case CACHE_TYPE_INST:
		return FUNC1(buf, "Instruction\n");
	case CACHE_TYPE_UNIFIED:
		return FUNC1(buf, "Unified\n");
	default:
		return -EINVAL;
	}
}