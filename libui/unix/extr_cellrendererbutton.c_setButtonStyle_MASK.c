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
typedef  int /*<<< orphan*/  GtkWidgetPath ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkStyleContext ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_STYLE_CLASS_BUTTON ; 
 int /*<<< orphan*/  GTK_TYPE_BUTTON ; 
 int /*<<< orphan*/  G_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static GtkStyleContext *FUNC13(GtkWidget *widget)
{
	GtkStyleContext *base, *context;
	GtkWidgetPath *path;

	base = FUNC7(widget);
	context = FUNC3();

	path = FUNC9(FUNC1(base));
	FUNC8(path, G_TYPE_NONE);
	if (!FUNC12(path, -1, "button"))
		// not on 3.20; try the type
		FUNC10(path, -1, GTK_TYPE_BUTTON);

	FUNC5(context, path);
	FUNC4(context, base);
	// the gtk3-demo example (which says we need to do this) uses gtk_widget_path_iter_get_state(path, -1) but that's not available until 3.14
	// TODO make a future for that too
	FUNC6(context, FUNC2(base));
	FUNC11(path);

	// and if the above widget path screwery stil doesn't work, this will
	FUNC0(context, GTK_STYLE_CLASS_BUTTON);

	return context;
}