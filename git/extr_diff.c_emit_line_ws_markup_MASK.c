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
struct diff_options {int* output_indicators; unsigned int ws_error_highlight; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_WHITESPACE ; 
 char* FUNC0 (struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,char const*,char const*,int,char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,unsigned int,int /*<<< orphan*/ ,char const*,char const*,char const*) ; 

__attribute__((used)) static void FUNC3(struct diff_options *o,
				const char *set_sign, const char *set,
				const char *reset,
				int sign_index, const char *line, int len,
				unsigned ws_rule, int blank_at_eof)
{
	const char *ws = NULL;
	int sign = o->output_indicators[sign_index];

	if (o->ws_error_highlight & ws_rule) {
		ws = FUNC0(o, DIFF_WHITESPACE);
		if (!*ws)
			ws = NULL;
	}

	if (!ws && !set_sign)
		FUNC1(o, set, NULL, 0, reset, sign, line, len);
	else if (!ws) {
		FUNC1(o, set_sign, set, !!set_sign, reset, sign, line, len);
	} else if (blank_at_eof)
		/* Blank line at EOF - paint '+' as well */
		FUNC1(o, ws, NULL, 0, reset, sign, line, len);
	else {
		/* Emit just the prefix, then the rest. */
		FUNC1(o, set_sign ? set_sign : set, NULL, !!set_sign, reset,
			    sign, "", 0);
		FUNC2(line, len, ws_rule,
			      o->file, set, reset, ws);
	}
}