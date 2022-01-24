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
struct checkboxColumnParams {int /*<<< orphan*/  m; int /*<<< orphan*/  modelColumn; } ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRendererToggle ;
typedef  int /*<<< orphan*/  GValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_VALUE_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(GtkCellRendererToggle *r, gchar *pathstr, gpointer data)
{
	struct checkboxColumnParams *p = (struct checkboxColumnParams *) data;
	GValue value = G_VALUE_INIT;
	int v;
	uiTableValue *tvalue;
	GtkTreePath *path;
	GtkTreeIter iter;

	path = FUNC8(pathstr);
	FUNC5(FUNC1(p->m), &iter, path);
	FUNC7(path);
	FUNC6(FUNC1(p->m), &iter, p->modelColumn, &value);
	v = FUNC3(&value);
	FUNC4(&value);
	tvalue = FUNC11(!v);
	FUNC9(p->m, p->modelColumn, pathstr, tvalue, NULL);
	FUNC10(tvalue);
	// and update the column TODO copy comment here
	// TODO avoid fetching the model data twice
	FUNC2(NULL, FUNC0(r), FUNC1(p->m), &iter, data);
}