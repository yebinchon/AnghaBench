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
typedef  int /*<<< orphan*/  uiTableValue ;
typedef  int /*<<< orphan*/  uiTableModel ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(uiTableModel *m, int column, const char *pathstr, const uiTableValue *tvalue, GtkTreeIter *iter)
{
	GtkTreePath *path;
	int row;

	path = FUNC4(pathstr);
	row = FUNC3(path)[0];
	if (iter != NULL)
		FUNC1(FUNC0(m), iter, path);
	FUNC2(path);
	FUNC5(m, row, column, tvalue);
}