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
struct device {struct device* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 

__attribute__((used)) static void FUNC1(struct device *dev,
				 struct device **root_dprc_dev)
{
	if (!dev) {
		*root_dprc_dev = NULL;
	} else if (!FUNC0(dev)) {
		*root_dprc_dev = NULL;
	} else {
		*root_dprc_dev = dev;
		while (FUNC0((*root_dprc_dev)->parent))
			*root_dprc_dev = (*root_dprc_dev)->parent;
	}
}