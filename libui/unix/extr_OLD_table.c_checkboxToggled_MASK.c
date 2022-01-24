#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* mh; } ;
typedef  TYPE_2__ uiTableModel ;
struct tablePart {int /*<<< orphan*/  valueColumn; TYPE_1__* tv; } ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {void* (* CellValue ) (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_2__* model; } ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkCellRendererToggle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tablePart*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static void FUNC7(GtkCellRendererToggle *r, gchar *pathstr, gpointer data)
{
	struct tablePart *part = (struct tablePart *) data;
	GtkTreePath *path;
	int row;
	uiTableModel *m;
	void *value;
	int intval;

	path = FUNC2(pathstr);
	row = FUNC1(path)[0];
	FUNC0(path);
	m = part->tv->model;
	value = (*(m->mh->CellValue))(m->mh, m, row, part->valueColumn);
	intval = !FUNC6(value);
	FUNC3(part, part->valueColumn, pathstr, FUNC5(intval));
}