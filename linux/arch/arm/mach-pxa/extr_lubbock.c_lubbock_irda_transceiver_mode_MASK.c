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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IR_FIRMODE ; 
 int IR_SIRMODE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 

__attribute__((used)) static void FUNC5(struct device *dev, int mode)
{
	unsigned long flags;

	FUNC2(flags);
	if (mode & IR_SIRMODE) {
		FUNC3(FUNC0(4), 0);
	} else if (mode & IR_FIRMODE) {
		FUNC3(FUNC0(4), FUNC0(4));
	}
	FUNC4(dev, mode);
	FUNC1(flags);
}