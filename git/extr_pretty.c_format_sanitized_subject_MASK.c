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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,size_t,size_t) ; 

__attribute__((used)) static void FUNC3(struct strbuf *sb, const char *msg)
{
	size_t trimlen;
	size_t start_len = sb->len;
	int space = 2;

	for (; *msg && *msg != '\n'; msg++) {
		if (FUNC0(*msg)) {
			if (space == 1)
				FUNC1(sb, '-');
			space = 0;
			FUNC1(sb, *msg);
			if (*msg == '.')
				while (*(msg+1) == '.')
					msg++;
		} else
			space |= 1;
	}

	/* trim any trailing '.' or '-' characters */
	trimlen = 0;
	while (sb->len - trimlen > start_len &&
		(sb->buf[sb->len - 1 - trimlen] == '.'
		|| sb->buf[sb->len - 1 - trimlen] == '-'))
		trimlen++;
	FUNC2(sb, sb->len - trimlen, trimlen);
}