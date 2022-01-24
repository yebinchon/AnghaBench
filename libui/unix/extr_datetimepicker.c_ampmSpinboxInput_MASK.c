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
typedef  char gchar ;
typedef  int /*<<< orphan*/  GtkSpinButton ;

/* Variables and functions */
 int /*<<< orphan*/  AM_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_INPUT_ERROR ; 
 int /*<<< orphan*/  PM_STR ; 
 int /*<<< orphan*/  TRUE ; 
 char FUNC1 (char const) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static gint FUNC4(GtkSpinButton *sb, gpointer ptr, gpointer data)
{
	double *out = (double *) ptr;
	const gchar *text;
	char firstAM, firstPM;

	text = FUNC2(FUNC0(sb));
	// LONGTERM don't use ASCII here for case insensitivity
	firstAM = FUNC1(FUNC3(AM_STR)[0]);
	firstPM = FUNC1(FUNC3(PM_STR)[0]);
	for (; *text != '\0'; text++)
		if (FUNC1(*text) == firstAM) {
			*out = 0;
			return TRUE;
		} else if (FUNC1(*text) == firstPM) {
			*out = 1;
			return TRUE;
		}
	return GTK_INPUT_ERROR;
}