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
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
	FUNC1(FUNC3(_odb, FUNC4(1), 5));
	FUNC1(FUNC3(_odb, FUNC4(5), 3));
	FUNC1(FUNC3(_odb, FUNC4(3), 4));
	FUNC1(FUNC3(_odb, FUNC4(7), 1));
	FUNC1(FUNC2(_odb, FUNC4(0), 5));
	FUNC1(FUNC2(_odb, FUNC4(4), 3));
	FUNC1(FUNC2(_odb, FUNC4(2), 4));
	FUNC1(FUNC2(_odb, FUNC4(6), 1));

	FUNC0(_odb);
}