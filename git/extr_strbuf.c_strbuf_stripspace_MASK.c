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
 size_t FUNC0 (char*,size_t) ; 
 char comment_line_char ; 
 char* FUNC1 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,size_t) ; 

void FUNC5(struct strbuf *sb, int skip_comments)
{
	size_t empties = 0;
	size_t i, j, len, newlen;
	char *eol;

	/* We may have to add a newline. */
	FUNC3(sb, 1);

	for (i = j = 0; i < sb->len; i += len, j += newlen) {
		eol = FUNC1(sb->buf + i, '\n', sb->len - i);
		len = eol ? eol - (sb->buf + i) + 1 : sb->len - i;

		if (skip_comments && len && sb->buf[i] == comment_line_char) {
			newlen = 0;
			continue;
		}
		newlen = FUNC0(sb->buf + i, len);

		/* Not just an empty line? */
		if (newlen) {
			if (empties > 0 && j > 0)
				sb->buf[j++] = '\n';
			empties = 0;
			FUNC2(sb->buf + j, sb->buf + i, newlen);
			sb->buf[newlen + j++] = '\n';
		} else {
			empties++;
		}
	}

	FUNC4(sb, j);
}