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
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;
typedef  int /*<<< orphan*/  GdkRGBA ;
typedef  int /*<<< orphan*/  GValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FALSE ; 
 int /*<<< orphan*/  G_VALUE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(GtkTreeModel *mm, GtkTreeIter *iter, int modelColumn, GtkCellRenderer *r, const char *prop, const char *propSet)
{
	GValue value = G_VALUE_INIT;
	GdkRGBA *rgba;

	FUNC3(mm, iter, modelColumn, &value);
	rgba = (GdkRGBA *) FUNC1(&value);
	if (rgba != NULL)
		FUNC0(r, prop, rgba, NULL);
	else
		FUNC0(r, propSet, FALSE, NULL);
	FUNC2(&value);
}