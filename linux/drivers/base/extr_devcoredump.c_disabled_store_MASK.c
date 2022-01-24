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
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devcd_class ; 
 int devcd_disabled ; 
 int /*<<< orphan*/  devcd_free ; 
 long FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct class *class, struct class_attribute *attr,
			      const char *buf, size_t count)
{
	long tmp = FUNC1(buf, NULL, 10);

	/*
	 * This essentially makes the attribute write-once, since you can't
	 * go back to not having it disabled. This is intentional, it serves
	 * as a system lockdown feature.
	 */
	if (tmp != 1)
		return -EINVAL;

	devcd_disabled = true;

	FUNC0(&devcd_class, NULL, NULL, devcd_free);

	return count;
}