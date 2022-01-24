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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  devm_kmalloc_match ; 
 int /*<<< orphan*/  devm_kmalloc_release ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct device *dev, const void *p)
{
	int rc;

	/*
	 * Special case: pointer to a string in .rodata returned by
	 * devm_kstrdup_const().
	 */
	if (FUNC3(FUNC2((unsigned long)p)))
		return;

	rc = FUNC1(dev, devm_kmalloc_release,
			    devm_kmalloc_match, (void *)p);
	FUNC0(rc);
}