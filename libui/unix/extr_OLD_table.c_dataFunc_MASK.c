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
struct tablePart {int type; int colorColumn; TYPE_1__* tv; int /*<<< orphan*/  valueColumn; int /*<<< orphan*/  textColumn; int /*<<< orphan*/  imageColumn; } ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_2__ {int backgroundColumn; int /*<<< orphan*/  treeWidget; } ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;
typedef  int /*<<< orphan*/  GValue ;

/* Variables and functions */
 int /*<<< orphan*/  G_VALUE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  partButton 132 
#define  partCheckbox 131 
#define  partImage 130 
#define  partProgressBar 129 
#define  partText 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(GtkTreeViewColumn *c, GtkCellRenderer *r, GtkTreeModel *mm, GtkTreeIter *iter, gpointer data)
{
	struct tablePart *part = (struct tablePart *) data;
	GValue value = G_VALUE_INIT;
	const gchar *str;
	uiImage *img;
	int pval;

	switch (part->type) {
	case partText:
		FUNC6(mm, iter, part->textColumn, &value);
		str = FUNC4(&value);
		FUNC1(r, "text", str, NULL);
		if (part->colorColumn != -1)
			FUNC0(mm, iter,
				part->colorColumn,
				r, "foreground-rgba", "foreground-set");
		break;
	case partImage:
//TODO		setImageSize(r);
		FUNC6(mm, iter, part->imageColumn, &value);
		img = (uiImage *) FUNC3(&value);
		FUNC1(r, "surface",
			FUNC7(img, part->tv->treeWidget),
			NULL);
		break;
	case partButton:
		FUNC6(mm, iter, part->textColumn, &value);
		str = FUNC4(&value);
		FUNC1(r, "text", str, NULL);
		break;
	case partCheckbox:
		FUNC6(mm, iter, part->valueColumn, &value);
		FUNC1(r, "active", FUNC2(&value) != 0, NULL);
		break;
	case partProgressBar:
		FUNC6(mm, iter, part->valueColumn, &value);
		pval = FUNC2(&value);
		if (pval == -1) {
			// TODO
		} else
			FUNC1(r,
				"pulse", -1,
				"value", pval,
				NULL);
		break;
	}
	FUNC5(&value);

	if (part->tv->backgroundColumn != -1)
		FUNC0(mm, iter,
			part->tv->backgroundColumn,
			r, "cell-background-rgba", "cell-background-set");
}