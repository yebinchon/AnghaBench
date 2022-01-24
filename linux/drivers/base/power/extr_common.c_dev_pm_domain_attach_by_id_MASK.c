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
struct device {scalar_t__ pm_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct device*,unsigned int) ; 

struct device *FUNC2(struct device *dev,
					  unsigned int index)
{
	if (dev->pm_domain)
		return FUNC0(-EEXIST);

	return FUNC1(dev, index);
}