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
struct powerdomain {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct powerdomain*) ; 
 int /*<<< orphan*/  arch_pwrdm ; 

int FUNC1(struct powerdomain **ps)
{
	struct powerdomain **p = NULL;

	if (!arch_pwrdm)
		return -EEXIST;

	if (!ps)
		return -EINVAL;

	for (p = ps; *p; p++)
		FUNC0(*p);

	return 0;
}