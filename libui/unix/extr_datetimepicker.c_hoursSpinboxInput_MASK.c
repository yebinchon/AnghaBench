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
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkSpinButton ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_INPUT_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static gint FUNC3(GtkSpinButton *sb, gpointer ptr, gpointer data)
{
	double *out = (double *) ptr;
	const gchar *text;
	int value;

	text = FUNC2(FUNC0(sb));
	value = (int) FUNC1(text, NULL);
	if (value < 0 || value > 12)
		return GTK_INPUT_ERROR;
	if (value == 12)		// 12 to the user is 0 internally
		value = 0;
	*out = (double) value;
	return TRUE;
}