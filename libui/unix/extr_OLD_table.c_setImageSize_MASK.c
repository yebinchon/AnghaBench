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
typedef  int gint ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GTK_ICON_SIZE_MENU ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void FUNC4(GtkCellRenderer *r)
{
	gint size;
	gint width, height;
	gint xpad, ypad;

	size = 16;		// fallback used by GtkFileChooserWidget
	if (FUNC3(GTK_ICON_SIZE_MENU, &width, &height) != FALSE)
		size = FUNC0(width, height);
	FUNC1(r, &xpad, &ypad);
	FUNC2(r,
		2 * xpad + size,
		2 * ypad + size);
}