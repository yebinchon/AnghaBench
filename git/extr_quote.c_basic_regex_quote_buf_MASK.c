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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 

void FUNC1(struct strbuf *sb, const char *src)
{
	char c;

	if (*src == '^') {
		/* only beginning '^' is special and needs quoting */
		FUNC0(sb, '\\');
		FUNC0(sb, *src++);
	}
	if (*src == '*')
		/* beginning '*' is not special, no quoting */
		FUNC0(sb, *src++);

	while ((c = *src++)) {
		switch (c) {
		case '[':
		case '.':
		case '\\':
		case '*':
			FUNC0(sb, '\\');
			FUNC0(sb, c);
			break;

		case '$':
			/* only the end '$' is special and needs quoting */
			if (*src == '\0')
				FUNC0(sb, '\\');
			FUNC0(sb, c);
			break;

		default:
			FUNC0(sb, c);
			break;
		}
	}
}