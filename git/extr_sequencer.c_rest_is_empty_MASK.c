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
struct strbuf {int len; char const* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 char* FUNC1 (char const*,char,int) ; 
 int /*<<< orphan*/  sign_off_header ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct strbuf *sb, int start)
{
	int i, eol;
	const char *nl;

	/* Check if the rest is just whitespace and Signed-off-by's. */
	for (i = start; i < sb->len; i++) {
		nl = FUNC1(sb->buf + i, '\n', sb->len - i);
		if (nl)
			eol = nl - sb->buf;
		else
			eol = sb->len;

		if (FUNC3(sign_off_header) <= eol - i &&
		    FUNC2(sb->buf + i, sign_off_header)) {
			i = eol;
			continue;
		}
		while (i < eol)
			if (!FUNC0(sb->buf[i++]))
				return 0;
	}

	return 1;
}