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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 char* utf8_replace_character ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC6(int argc, const char **argv)
{
	unsigned char buf[1024], tmp[4], *tmp2 = NULL;
	ssize_t cur = 0, len = 1, remaining = 0;
	unsigned char ch;

	for (;;) {
		if (++cur == len) {
			len = FUNC5(0, buf, sizeof(buf));
			if (!len)
				return 0;
			if (len < 0)
				FUNC0("Could not read <stdin>");
			cur = 0;
		}
		ch = buf[cur];

		if (tmp2) {
			if ((ch & 0xc0) != 0x80) {
				FUNC3(utf8_replace_character, stdout);
				tmp2 = NULL;
				cur--;
				continue;
			}
			*tmp2 = ch;
			tmp2++;
			if (--remaining == 0) {
				FUNC4(tmp, tmp2 - tmp, 1, stdout);
				tmp2 = NULL;
			}
			continue;
		}

		if (!(ch & 0x80)) {
			/* 0xxxxxxx */
			if (ch == '&')
				FUNC3("&amp;", stdout);
			else if (ch == '\'')
				FUNC3("&apos;", stdout);
			else if (ch == '"')
				FUNC3("&quot;", stdout);
			else if (ch == '<')
				FUNC3("&lt;", stdout);
			else if (ch == '>')
				FUNC3("&gt;", stdout);
			else if (ch >= 0x20)
				FUNC2(ch, stdout);
			else if (ch == 0x09 || ch == 0x0a || ch == 0x0d)
				FUNC1(stdout, "&#x%02hhx;", ch);
			else
				FUNC3(utf8_replace_character, stdout);
		} else if ((ch & 0xe0) == 0xc0) {
			/* 110XXXXx 10xxxxxx */
			tmp[0] = ch;
			remaining = 1;
			tmp2 = tmp + 1;
		} else if ((ch & 0xf0) == 0xe0) {
			/* 1110XXXX 10Xxxxxx 10xxxxxx */
			tmp[0] = ch;
			remaining = 2;
			tmp2 = tmp + 1;
		} else if ((ch & 0xf8) == 0xf0) {
			/* 11110XXX 10XXxxxx 10xxxxxx 10xxxxxx */
			tmp[0] = ch;
			remaining = 3;
			tmp2 = tmp + 1;
		} else
			FUNC3(utf8_replace_character, stdout);
	}

	return 0;
}