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
struct switch_dev {struct switch_dev* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct switch_dev*) ; 

void
FUNC1(struct switch_dev *dev)
{
	struct switch_dev *p;

	while (dev) {
		p = dev->next;
		FUNC0(dev);
		dev = p;
	}
}