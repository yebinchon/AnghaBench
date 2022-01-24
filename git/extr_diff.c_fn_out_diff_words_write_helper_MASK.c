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
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct diff_words_style_elem {char const* color; char const* prefix; char const* suffix; } ;
struct diff_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_SYMBOL_WORD_DIFF ; 
 char* GIT_COLOR_RESET ; 
 struct strbuf STRBUF_INIT ; 
 char const* FUNC0 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(struct diff_options *o,
					  struct diff_words_style_elem *st_el,
					  const char *newline,
					  size_t count, const char *buf)
{
	int print = 0;
	struct strbuf sb = STRBUF_INIT;

	while (count) {
		char *p = FUNC2(buf, '\n', count);
		if (print)
			FUNC4(&sb, FUNC0(o));

		if (p != buf) {
			const char *reset = st_el->color && *st_el->color ?
					    GIT_COLOR_RESET : NULL;
			if (st_el->color && *st_el->color)
				FUNC4(&sb, st_el->color);
			FUNC4(&sb, st_el->prefix);
			FUNC3(&sb, buf, p ? p - buf : count);
			FUNC4(&sb, st_el->suffix);
			if (reset)
				FUNC4(&sb, reset);
		}
		if (!p)
			goto out;

		FUNC4(&sb, newline);
		count -= p + 1 - buf;
		buf = p + 1;
		print = 1;
		if (count) {
			FUNC1(o, DIFF_SYMBOL_WORD_DIFF,
					 sb.buf, sb.len, 0);
			FUNC6(&sb);
		}
	}

out:
	if (sb.len)
		FUNC1(o, DIFF_SYMBOL_WORD_DIFF,
				 sb.buf, sb.len, 0);
	FUNC5(&sb);
	return 0;
}