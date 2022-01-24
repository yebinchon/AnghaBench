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
struct ace_device {int /*<<< orphan*/  baseaddr; scalar_t__ irq; int /*<<< orphan*/  fsm_tasklet; int /*<<< orphan*/  tag_set; scalar_t__ queue; scalar_t__ gd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct ace_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ace_device *ace)
{
	if (ace->gd) {
		FUNC2(ace->gd);
		FUNC5(ace->gd);
	}

	if (ace->queue) {
		FUNC0(ace->queue);
		FUNC1(&ace->tag_set);
	}

	FUNC6(&ace->fsm_tasklet);

	if (ace->irq)
		FUNC3(ace->irq, ace);

	FUNC4(ace->baseaddr);
}