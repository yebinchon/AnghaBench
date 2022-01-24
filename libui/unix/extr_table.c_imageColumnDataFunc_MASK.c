#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiImage ;
struct imageColumnParams {TYPE_1__* t; int /*<<< orphan*/  modelColumn; } ;
typedef  scalar_t__ gpointer ;
struct TYPE_2__ {int /*<<< orphan*/  treeWidget; } ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;
typedef  int /*<<< orphan*/  GValue ;

/* Variables and functions */
 int /*<<< orphan*/  G_VALUE_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(GtkTreeViewColumn *c, GtkCellRenderer *r, GtkTreeModel *m, GtkTreeIter *iter, gpointer data)
{
	struct imageColumnParams *p = (struct imageColumnParams *) data;
	GValue value = G_VALUE_INIT;
	uiImage *img;

//TODO	setImageSize(r);
	FUNC4(m, iter, p->modelColumn, &value);
	img = (uiImage *) FUNC2(&value);
	FUNC1(r, "surface",
		FUNC5(img, p->t->treeWidget),
		NULL);
	FUNC3(&value);

	FUNC0(p->t, m, iter, r);
}