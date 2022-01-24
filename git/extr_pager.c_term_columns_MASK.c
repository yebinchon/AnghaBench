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
struct winsize {int ws_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct winsize*) ; 

int FUNC3(void)
{
	static int term_columns_at_startup;

	char *col_string;
	int n_cols;

	if (term_columns_at_startup)
		return term_columns_at_startup;

	term_columns_at_startup = 80;

	col_string = FUNC1("COLUMNS");
	if (col_string && (n_cols = FUNC0(col_string)) > 0)
		term_columns_at_startup = n_cols;
#ifdef TIOCGWINSZ
	else {
		struct winsize ws;
		if (!ioctl(1, TIOCGWINSZ, &ws) && ws.ws_col)
			term_columns_at_startup = ws.ws_col;
	}
#endif

	return term_columns_at_startup;
}