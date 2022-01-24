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
struct trelay {int /*<<< orphan*/  debugfs; int /*<<< orphan*/  dev2; int /*<<< orphan*/  dev1; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trelay*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct trelay *tr)
{
	FUNC3(&tr->list);

	FUNC1(tr->dev1);
	FUNC1(tr->dev2);

	FUNC4(tr->dev1);
	FUNC4(tr->dev2);

	FUNC0(tr->debugfs);
	FUNC2(tr);

	return 0;
}