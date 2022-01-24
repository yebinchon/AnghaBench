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
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkFileChooserAction ;
typedef  int /*<<< orphan*/  GtkFileChooser ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_RESPONSE_ACCEPT ; 
 int /*<<< orphan*/  GTK_RESPONSE_CANCEL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC12(GtkWindow *parent, GtkFileChooserAction mode, const gchar *confirm)
{
	GtkWidget *fcd;
	GtkFileChooser *fc;
	gint response;
	char *filename;

	fcd = FUNC3(NULL, parent, mode,
		"_Cancel", GTK_RESPONSE_CANCEL,
		confirm, GTK_RESPONSE_ACCEPT,
		NULL);
	fc = FUNC1(fcd);
	FUNC7(fc, FALSE);
	FUNC8(fc, FALSE);
	FUNC9(fc, TRUE);
	FUNC6(fc, TRUE);
	FUNC5(fc, TRUE);
	response = FUNC2(FUNC0(fcd));
	if (response != GTK_RESPONSE_ACCEPT) {
		FUNC10(fcd);
		return NULL;
	}
	filename = FUNC11(FUNC4(fc));
	FUNC10(fcd);
	return filename;
}