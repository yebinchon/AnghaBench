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
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct component_match**,void (*) (struct device*,void*),int (*) (struct device*,void*),int /*<<< orphan*/ *,void*) ; 

void FUNC1(struct device *master,
	struct component_match **matchptr,
	void (*release)(struct device *, void *),
	int (*compare)(struct device *, void *), void *compare_data)
{
	FUNC0(master, matchptr, release, compare, NULL,
			      compare_data);
}