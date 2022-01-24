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
struct strbuf {size_t len; } ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,size_t) ; 
 scalar_t__ FUNC8 (char const**,int /*<<< orphan*/ *) ; 

void FUNC9(struct strbuf *buf,
		const char *text, int indent1, int indent2, int width)
{
	int indent, w, assume_utf8 = 1;
	const char *bol, *space, *start = text;
	size_t orig_len = buf->len;

	if (width <= 0) {
		FUNC4(buf, text, indent1, indent2);
		return;
	}

retry:
	bol = text;
	w = indent = indent1;
	space = NULL;
	if (indent < 0) {
		w = -indent;
		space = text;
	}

	for (;;) {
		char c;
		size_t skip;

		while ((skip = FUNC0(text)))
			text += skip;

		c = *text;
		if (!c || FUNC2(c)) {
			if (w <= width || !space) {
				const char *start = bol;
				if (!c && text == start)
					return;
				if (space)
					start = space;
				else
					FUNC6(buf, ' ', indent);
				FUNC3(buf, start, text - start);
				if (!c)
					return;
				space = text;
				if (c == '\t')
					w |= 0x07;
				else if (c == '\n') {
					space++;
					if (*space == '\n') {
						FUNC5(buf, '\n');
						goto new_line;
					}
					else if (!FUNC1(*space))
						goto new_line;
					else
						FUNC5(buf, ' ');
				}
				w++;
				text++;
			}
			else {
new_line:
				FUNC5(buf, '\n');
				text = bol = space + FUNC2(*space);
				space = NULL;
				w = indent = indent2;
			}
			continue;
		}
		if (assume_utf8) {
			w += FUNC8(&text, NULL);
			if (!text) {
				assume_utf8 = 0;
				text = start;
				FUNC7(buf, orig_len);
				goto retry;
			}
		} else {
			w++;
			text++;
		}
	}
}