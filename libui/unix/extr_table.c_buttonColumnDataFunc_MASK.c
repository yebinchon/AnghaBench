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
struct buttonColumnParams {int /*<<< orphan*/  t; int /*<<< orphan*/  clickableColumn; int /*<<< orphan*/  m; int /*<<< orphan*/  modelColumn; } ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;
typedef  int /*<<< orphan*/  GValue ;

/* Variables and functions */
 int /*<<< orphan*/  G_VALUE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(GtkTreeViewColumn *c, GtkCellRenderer *r, GtkTreeModel *m, GtkTreeIter *iter, gpointer data)
{
	struct buttonColumnParams *p = (struct buttonColumnParams *) data;
	GValue value = G_VALUE_INIT;
	const gchar *str;

	FUNC4(m, iter, p->modelColumn, &value);
	str = FUNC2(&value);
	FUNC1(r, "text", str, NULL);
	FUNC3(&value);

	FUNC5(p->m, iter, p->clickableColumn, r, "sensitive");

	FUNC0(p->t, m, iter, r);
}