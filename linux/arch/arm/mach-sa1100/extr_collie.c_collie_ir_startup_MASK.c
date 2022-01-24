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
 int /*<<< orphan*/  COLLIE_GPIO_IR_ON ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int rc = FUNC2(COLLIE_GPIO_IR_ON, "IrDA");
	if (rc)
		return rc;
	rc = FUNC0(COLLIE_GPIO_IR_ON, 1);

	if (!rc)
		return 0;

	FUNC1(COLLIE_GPIO_IR_ON);
	return rc;
}