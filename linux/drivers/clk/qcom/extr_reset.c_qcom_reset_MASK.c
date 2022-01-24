#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct reset_controller_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* deassert ) (struct reset_controller_dev*,unsigned long) ;int /*<<< orphan*/  (* assert ) (struct reset_controller_dev*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reset_controller_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct reset_controller_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev, unsigned long id)
{
	rcdev->ops->assert(rcdev, id);
	FUNC2(1);
	rcdev->ops->deassert(rcdev, id);
	return 0;
}