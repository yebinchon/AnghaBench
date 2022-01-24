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
struct diff_options {int /*<<< orphan*/  use_color; int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const* GIT_COLOR_REVERSE ; 
 char const* FUNC0 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct diff_options *o,
			const char *set_sign, const char *set, unsigned reverse, const char *reset,
			int first, const char *line, int len)
{
	int has_trailing_newline, has_trailing_carriage_return;
	int needs_reset = 0; /* at the end of the line */
	FILE *file = o->file;

	FUNC2(FUNC0(o), file);

	has_trailing_newline = (len > 0 && line[len-1] == '\n');
	if (has_trailing_newline)
		len--;

	has_trailing_carriage_return = (len > 0 && line[len-1] == '\r');
	if (has_trailing_carriage_return)
		len--;

	if (!len && !first)
		goto end_of_line;

	if (reverse && FUNC4(o->use_color)) {
		FUNC2(GIT_COLOR_REVERSE, file);
		needs_reset = 1;
	}

	if (set_sign) {
		FUNC2(set_sign, file);
		needs_reset = 1;
	}

	if (first)
		FUNC1(first, file);

	if (!len)
		goto end_of_line;

	if (set) {
		if (set_sign && set != set_sign)
			FUNC2(reset, file);
		FUNC2(set, file);
		needs_reset = 1;
	}
	FUNC3(line, len, 1, file);
	needs_reset = 1; /* 'line' may contain color codes. */

end_of_line:
	if (needs_reset)
		FUNC2(reset, file);
	if (has_trailing_carriage_return)
		FUNC1('\r', file);
	if (has_trailing_newline)
		FUNC1('\n', file);
}