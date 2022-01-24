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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned int rows, unsigned int cols)
{
	/* Set all the necessary GPK pins to special-function 3: KP_ROW[x] */
	FUNC3(FUNC0(8), rows, FUNC2(3));

	/* Set all the necessary GPL pins to special-function 3: KP_COL[x] */
	FUNC3(FUNC1(0), cols, FUNC2(3));
}