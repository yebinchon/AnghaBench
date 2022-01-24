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
struct strbuf {size_t len; char* buf; } ;
struct mailinfo {int /*<<< orphan*/  delsp; int /*<<< orphan*/  format_flowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mailinfo*,struct strbuf*) ; 
 scalar_t__ FUNC1 (char*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct mailinfo *mi, struct strbuf *line,
				 struct strbuf *prev)
{
	size_t len = line->len;
	const char *rest;

	if (!mi->format_flowed) {
		FUNC0(mi, line);
		return;
	}

	if (line->buf[len - 1] == '\n') {
		len--;
		if (len && line->buf[len - 1] == '\r')
			len--;
	}

	/* Keep signature separator as-is. */
	if (FUNC1(line->buf, "-- ", &rest) && rest - line->buf == len) {
		if (prev->len) {
			FUNC0(mi, prev);
			FUNC5(prev);
		}
		FUNC0(mi, line);
		return;
	}

	/* Unstuff space-stuffed line. */
	if (len && line->buf[0] == ' ') {
		FUNC4(line, 0, 1);
		len--;
	}

	/* Save flowed line for later, but without the soft line break. */
	if (len && line->buf[len - 1] == ' ') {
		FUNC2(prev, line->buf, len - !!mi->delsp);
		return;
	}

	/* Prepend any previous partial lines */
	FUNC3(line, 0, prev->buf, prev->len);
	FUNC5(prev);

	FUNC0(mi, line);
}