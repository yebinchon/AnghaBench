#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiTableModel ;
struct TYPE_3__ {int /*<<< orphan*/  user_data; int /*<<< orphan*/  stamp; } ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  TYPE_1__ GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STAMP_GOOD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 

void FUNC5(uiTableModel *m, int newIndex)
{
	GtkTreePath *path;
	GtkTreeIter iter;

	path = FUNC4(newIndex, -1);
	iter.stamp = STAMP_GOOD;
	iter.user_data = FUNC0(newIndex);
	FUNC2(FUNC1(m), path, &iter);
	FUNC3(path);
}