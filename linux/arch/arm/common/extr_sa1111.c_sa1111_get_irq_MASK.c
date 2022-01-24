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
struct sa1111_dev {int /*<<< orphan*/ * hwirq; } ;
struct sa1111 {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 struct sa1111* FUNC1 (struct sa1111_dev*) ; 
 int FUNC2 (struct sa1111*,int /*<<< orphan*/ ) ; 

int FUNC3(struct sa1111_dev *sadev, unsigned num)
{
	struct sa1111 *sachip = FUNC1(sadev);
	if (num >= FUNC0(sadev->hwirq))
		return -EINVAL;
	return FUNC2(sachip, sadev->hwirq[num]);
}