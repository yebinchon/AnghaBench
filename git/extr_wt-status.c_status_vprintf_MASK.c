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
typedef  int /*<<< orphan*/  va_list ;
struct wt_status {int /*<<< orphan*/  fp; scalar_t__ display_comment_prefix; } ;
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,struct strbuf*) ; 
 char comment_line_char ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(struct wt_status *s, int at_bol, const char *color,
		const char *fmt, va_list ap, const char *trail)
{
	struct strbuf sb = STRBUF_INIT;
	struct strbuf linebuf = STRBUF_INIT;
	const char *line, *eol;

	FUNC7(&sb, fmt, ap);
	if (!sb.len) {
		if (s->display_comment_prefix) {
			FUNC3(&sb, comment_line_char);
			if (!trail)
				FUNC3(&sb, ' ');
		}
		FUNC0(s->fp, color, &sb);
		if (trail)
			FUNC1(s->fp, "%s", trail);
		FUNC5(&sb);
		return;
	}
	for (line = sb.buf; *line; line = eol + 1) {
		eol = FUNC8(line, '\n');

		FUNC6(&linebuf);
		if (at_bol && s->display_comment_prefix) {
			FUNC3(&linebuf, comment_line_char);
			if (*line != '\n' && *line != '\t')
				FUNC3(&linebuf, ' ');
		}
		if (eol)
			FUNC2(&linebuf, line, eol - line);
		else
			FUNC4(&linebuf, line);
		FUNC0(s->fp, color, &linebuf);
		if (eol)
			FUNC1(s->fp, "\n");
		else
			break;
		at_bol = 1;
	}
	if (trail)
		FUNC1(s->fp, "%s", trail);
	FUNC5(&linebuf);
	FUNC5(&sb);
}