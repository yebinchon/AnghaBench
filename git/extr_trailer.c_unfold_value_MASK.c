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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct strbuf *val)
{
	struct strbuf out = STRBUF_INIT;
	size_t i;

	FUNC2(&out, val->len);
	i = 0;
	while (i < val->len) {
		char c = val->buf[i++];
		if (c == '\n') {
			/* Collapse continuation down to a single space. */
			while (i < val->len && FUNC0(val->buf[i]))
				i++;
			FUNC1(&out, ' ');
		} else {
			FUNC1(&out, c);
		}
	}

	/* Empty lines may have left us with whitespace cruft at the edges */
	FUNC5(&out);

	/* output goes back to val as if we modified it in-place */
	FUNC4(&out, val);
	FUNC3(&out);
}