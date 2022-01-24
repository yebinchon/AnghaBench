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
struct strbuf {char* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(const struct strbuf *line)
{
	/*
	 * The section that defines the loosest possible
	 * field name is "3.6.8 Optional fields".
	 *
	 * optional-field = field-name ":" unstructured CRLF
	 * field-name = 1*ftext
	 * ftext = %d33-57 / %59-126
	 */
	int ch;
	char *cp = line->buf;

	/* Count mbox From headers as headers */
	if (FUNC0(cp, "From ") || FUNC0(cp, ">From "))
		return 1;

	while ((ch = *cp++)) {
		if (ch == ':')
			return 1;
		if ((33 <= ch && ch <= 57) ||
		    (59 <= ch && ch <= 126))
			continue;
		break;
	}
	return 0;
}