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
 scalar_t__ FUNC0 (struct device*,char*) ; 
 struct device* FUNC1 (struct device*,char*,scalar_t__ (*) (struct device*,char*)) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static struct device *FUNC3(struct device *parent, char *class)
{
	if (FUNC0(parent, class)) {
		FUNC2(parent);
		return parent;
	}

	return FUNC1(parent, class, dev_is_class);
}