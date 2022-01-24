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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_EVENTS_ENABLE ; 
 int /*<<< orphan*/  GPIO_INPUT_INVERT ; 
 int /*<<< orphan*/  GPIO_NEGATIVE_EDGE_EN ; 
 int /*<<< orphan*/  GPIO_NEGATIVE_EDGE_STS ; 
 int /*<<< orphan*/  GPIO_POSITIVE_EDGE_EN ; 
 int /*<<< orphan*/  GPIO_POSITIVE_EDGE_STS ; 
 int /*<<< orphan*/  OLPC_GPIO_LID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ lid_inverted ; 
 int /*<<< orphan*/  sci_irq ; 

__attribute__((used)) static int FUNC6(void)
{
	int r;

	r = FUNC5(OLPC_GPIO_LID, "OLPC-LID");
	if (r)
		return r;

	FUNC4(OLPC_GPIO_LID);

	FUNC0(OLPC_GPIO_LID, GPIO_INPUT_INVERT);
	lid_inverted = 0;

	/* Clear edge detection and event enable for now */
	FUNC0(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);
	FUNC0(OLPC_GPIO_LID, GPIO_NEGATIVE_EDGE_EN);
	FUNC0(OLPC_GPIO_LID, GPIO_POSITIVE_EDGE_EN);
	FUNC1(OLPC_GPIO_LID, GPIO_NEGATIVE_EDGE_STS);
	FUNC1(OLPC_GPIO_LID, GPIO_POSITIVE_EDGE_STS);

	/* Set the LID to cause an PME event on group 6 */
	FUNC3(OLPC_GPIO_LID, 6, 1);

	/* Set PME group 6 to fire the SCI interrupt */
	FUNC2(6, sci_irq);

	/* Enable the event */
	FUNC1(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);

	return 0;
}