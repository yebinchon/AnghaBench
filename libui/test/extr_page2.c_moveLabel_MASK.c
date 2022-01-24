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
typedef  int /*<<< orphan*/  uiButton ;

/* Variables and functions */
 int /*<<< orphan*/ * movingBoxes ; 
 int movingCurrent ; 
 int /*<<< orphan*/  movingLabel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uiButton *b, void *data)
{
	int from, to;

	from = movingCurrent;
	to = 0;
	if (from == 0)
		to = 1;
	FUNC1(movingBoxes[from], 0);
	FUNC0(movingBoxes[to], FUNC2(movingLabel), 0);
	movingCurrent = to;
}