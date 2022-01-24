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
struct memory_block {scalar_t__ state; scalar_t__ start_section_nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ MEM_ONLINE ; 
 int /*<<< orphan*/  PAGES_PER_SECTION ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int sections_per_block ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct memory_block* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			      char *buf)
{
	struct memory_block *mem = FUNC4(dev);
	unsigned long pfn;
	int ret = 1, i;

	if (mem->state != MEM_ONLINE)
		goto out;

	for (i = 0; i < sections_per_block; i++) {
		if (!FUNC1(mem->start_section_nr + i))
			continue;
		pfn = FUNC2(mem->start_section_nr + i);
		ret &= FUNC0(pfn, PAGES_PER_SECTION);
	}

out:
	return FUNC3(buf, "%d\n", ret);
}