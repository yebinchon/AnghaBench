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
struct strbuf {char* buf; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static inline int FUNC2(const struct strbuf *line)
{
	size_t i;

	/* Beginning of a "diff -" header? */
	if (FUNC1(line->buf, "diff -"))
		return 1;

	/* CVS "Index: " line? */
	if (FUNC1(line->buf, "Index: "))
		return 1;

	/*
	 * "--- <filename>" starts patches without headers
	 * "---<sp>*" is a manual separator
	 */
	if (line->len < 4)
		return 0;

	if (FUNC1(line->buf, "---")) {
		/* space followed by a filename? */
		if (line->buf[3] == ' ' && !FUNC0(line->buf[4]))
			return 1;
		/* Just whitespace? */
		for (i = 3; i < line->len; i++) {
			unsigned char c = line->buf[i];
			if (c == '\n')
				return 1;
			if (!FUNC0(c))
				break;
		}
		return 0;
	}
	return 0;
}