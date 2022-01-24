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
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_ALIGN_CENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  GTK_ORIENTATION_VERTICAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_SHADOW_IN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_TYPE_INT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hbox ; 
 int /*<<< orphan*/  hbox2 ; 
 int /*<<< orphan*/  mainwin ; 
 int /*<<< orphan*/  model ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  onStartProgressClicked ; 
 int /*<<< orphan*/  onStartTableClicked ; 
 int /*<<< orphan*/  pbarDataFunc ; 
 int /*<<< orphan*/  progressbar ; 
 int /*<<< orphan*/  scrolledWindow ; 
 int /*<<< orphan*/  startProgress ; 
 int /*<<< orphan*/  startTable ; 
 int /*<<< orphan*/  treeview ; 
 int /*<<< orphan*/  vbox ; 

int FUNC30(void)
{
	GtkTreeIter iter;
	GtkTreeViewColumn *col;
	GtkCellRenderer *r;

	FUNC11(NULL, NULL);

	mainwin = FUNC29(GTK_WINDOW_TOPLEVEL);
	FUNC5(mainwin, "delete-event", FUNC4(onClosing), NULL);

	vbox = FUNC6(GTK_ORIENTATION_VERTICAL, 12);
	FUNC10(FUNC0(vbox), 12);
	FUNC9(FUNC0(mainwin), vbox);

	hbox = FUNC6(GTK_ORIENTATION_HORIZONTAL, 6);
	FUNC26(hbox, GTK_ALIGN_CENTER);
	FUNC9(FUNC0(vbox), hbox);

	startProgress = FUNC7("Start Progress Bar");
	FUNC5(startProgress, "clicked", FUNC4(onStartProgressClicked), NULL);
	FUNC9(FUNC0(hbox), startProgress);

	startTable = FUNC7("Start Table Cell Renderer");
	FUNC5(startTable, "clicked", FUNC4(onStartTableClicked), NULL);
	FUNC9(FUNC0(hbox), startTable);

	progressbar = FUNC16();
	FUNC9(FUNC0(vbox), progressbar);

	scrolledWindow = FUNC17(NULL, NULL);
	FUNC18(FUNC1(scrolledWindow), GTK_SHADOW_IN);
	FUNC27(scrolledWindow, TRUE);
	FUNC9(FUNC0(vbox), scrolledWindow);

	model = FUNC13(1, G_TYPE_INT);
	FUNC12(model, &iter);
	FUNC14(model, &iter,
		0, 0,
		-1);

	treeview = FUNC25(FUNC2(model));
	FUNC9(FUNC0(scrolledWindow), treeview);

	col = FUNC20();
	FUNC23(col, TRUE);
	FUNC24(col, "Column");
	FUNC19(FUNC3(treeview), col);

	r = FUNC8();
	FUNC21(col, r, TRUE);
	FUNC22(col, r, pbarDataFunc, NULL, NULL);

	hbox2 = FUNC6(GTK_ORIENTATION_HORIZONTAL, 6);
	FUNC26(hbox2, GTK_ALIGN_CENTER);
	FUNC9(FUNC0(vbox), hbox2);

	FUNC9(FUNC0(hbox2), FUNC7("These buttons"));
	FUNC9(FUNC0(hbox2), FUNC7("do nothing"));
	FUNC9(FUNC0(hbox2), FUNC7("when clicked"));

	FUNC28(mainwin);
	FUNC15();
	return 0;
}