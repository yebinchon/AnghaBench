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
struct strbuf {int len; } ;

/* Variables and functions */
 unsigned int WS_BLANK_AT_EOL ; 
 unsigned int WS_CR_AT_EOL ; 
 unsigned int WS_INDENT_WITH_NON_TAB ; 
 unsigned int WS_SPACE_BEFORE_TAB ; 
 unsigned int WS_TAB_IN_INDENT ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const) ; 
 int FUNC3 (unsigned int) ; 

void FUNC4(struct strbuf *dst, const char *src, int len, unsigned ws_rule, int *error_count)
{
	/*
	 * len is number of bytes to be copied from src, starting
	 * at src.  Typically src[len-1] is '\n', unless this is
	 * the incomplete last line.
	 */
	int i;
	int add_nl_to_tail = 0;
	int add_cr_to_tail = 0;
	int fixed = 0;
	int last_tab_in_indent = -1;
	int last_space_in_indent = -1;
	int need_fix_leading_space = 0;

	/*
	 * Strip trailing whitespace
	 */
	if (ws_rule & WS_BLANK_AT_EOL) {
		if (0 < len && src[len - 1] == '\n') {
			add_nl_to_tail = 1;
			len--;
			if (0 < len && src[len - 1] == '\r') {
				add_cr_to_tail = !!(ws_rule & WS_CR_AT_EOL);
				len--;
			}
		}
		if (0 < len && FUNC0(src[len - 1])) {
			while (0 < len && FUNC0(src[len-1]))
				len--;
			fixed = 1;
		}
	}

	/*
	 * Check leading whitespaces (indent)
	 */
	for (i = 0; i < len; i++) {
		char ch = src[i];
		if (ch == '\t') {
			last_tab_in_indent = i;
			if ((ws_rule & WS_SPACE_BEFORE_TAB) &&
			    0 <= last_space_in_indent)
			    need_fix_leading_space = 1;
		} else if (ch == ' ') {
			last_space_in_indent = i;
			if ((ws_rule & WS_INDENT_WITH_NON_TAB) &&
			    FUNC3(ws_rule) <= i - last_tab_in_indent)
				need_fix_leading_space = 1;
		} else
			break;
	}

	if (need_fix_leading_space) {
		/* Process indent ourselves */
		int consecutive_spaces = 0;
		int last = last_tab_in_indent + 1;

		if (ws_rule & WS_INDENT_WITH_NON_TAB) {
			/* have "last" point at one past the indent */
			if (last_tab_in_indent < last_space_in_indent)
				last = last_space_in_indent + 1;
			else
				last = last_tab_in_indent + 1;
		}

		/*
		 * between src[0..last-1], strip the funny spaces,
		 * updating them to tab as needed.
		 */
		for (i = 0; i < last; i++) {
			char ch = src[i];
			if (ch != ' ') {
				consecutive_spaces = 0;
				FUNC2(dst, ch);
			} else {
				consecutive_spaces++;
				if (consecutive_spaces == FUNC3(ws_rule)) {
					FUNC2(dst, '\t');
					consecutive_spaces = 0;
				}
			}
		}
		while (0 < consecutive_spaces--)
			FUNC2(dst, ' ');
		len -= last;
		src += last;
		fixed = 1;
	} else if ((ws_rule & WS_TAB_IN_INDENT) && last_tab_in_indent >= 0) {
		/* Expand tabs into spaces */
		int start = dst->len;
		int last = last_tab_in_indent + 1;
		for (i = 0; i < last; i++) {
			if (src[i] == '\t')
				do {
					FUNC2(dst, ' ');
				} while ((dst->len - start) % FUNC3(ws_rule));
			else
				FUNC2(dst, src[i]);
		}
		len -= last;
		src += last;
		fixed = 1;
	}

	FUNC1(dst, src, len);
	if (add_cr_to_tail)
		FUNC2(dst, '\r');
	if (add_nl_to_tail)
		FUNC2(dst, '\n');
	if (fixed && error_count)
		(*error_count)++;
}