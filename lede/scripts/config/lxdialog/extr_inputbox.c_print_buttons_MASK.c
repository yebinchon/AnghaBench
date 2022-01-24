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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(WINDOW * dialog, int height, int width, int selected)
{
	int x = width / 2 - 11;
	int y = height - 2;

	FUNC1(dialog, FUNC0("  Ok  "), y, x, selected == 0);
	FUNC1(dialog, FUNC0(" Help "), y, x + 14, selected == 1);

	FUNC2(dialog, y, x + 1 + 14 * selected);
	FUNC3(dialog);
}