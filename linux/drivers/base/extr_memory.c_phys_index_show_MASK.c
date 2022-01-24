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
struct memory_block {unsigned long start_section_nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 unsigned long sections_per_block ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long) ; 
 struct memory_block* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	struct memory_block *mem = FUNC1(dev);
	unsigned long phys_index;

	phys_index = mem->start_section_nr / sections_per_block;
	return FUNC0(buf, "%08lx\n", phys_index);
}