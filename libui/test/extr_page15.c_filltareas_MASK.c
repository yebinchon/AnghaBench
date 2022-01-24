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
struct tareas {int /*<<< orphan*/  close; int /*<<< orphan*/  bottomrightresize; int /*<<< orphan*/  bottomleftresize; int /*<<< orphan*/  toprightresize; int /*<<< orphan*/  topleftresize; int /*<<< orphan*/  bottomresize; int /*<<< orphan*/  rightresize; int /*<<< orphan*/  topresize; int /*<<< orphan*/  leftresize; int /*<<< orphan*/  alsomove; int /*<<< orphan*/  move; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(double awid, double aht, struct tareas *ta)
{
	FUNC0(ta->move, 20, 20, awid - 20, 20 + 30);
	FUNC0(ta->alsomove, 30, 200, 100, 270);
	FUNC0(ta->leftresize, 5, 20, 15, aht - 20);
	FUNC0(ta->topresize, 20, 5, awid - 20, 15);
	FUNC0(ta->rightresize, awid - 15, 20, awid - 5, aht - 20);
	FUNC0(ta->bottomresize, 20, aht - 15, awid - 20, aht - 5);
	FUNC0(ta->topleftresize, 5, 5, 15, 15);
	FUNC0(ta->toprightresize, awid - 15, 5, awid - 5, 15);
	FUNC0(ta->bottomleftresize, 5, aht - 15, 15, aht - 5);
	FUNC0(ta->bottomrightresize, awid - 15, aht - 15, awid - 5, aht - 5);
	FUNC0(ta->close, 130, 200, 200, 270);
}