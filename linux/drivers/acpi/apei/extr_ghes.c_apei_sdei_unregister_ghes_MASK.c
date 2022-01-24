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
struct ghes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM_SDE_INTERFACE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ghes*) ; 

__attribute__((used)) static int FUNC2(struct ghes *ghes)
{
	if (!FUNC0(CONFIG_ARM_SDE_INTERFACE))
		return -EOPNOTSUPP;

	return FUNC1(ghes);
}