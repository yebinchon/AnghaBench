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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (struct strbuf*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 

int FUNC2(struct strbuf *sb, FILE *fp)
{
	if (FUNC0(sb, fp, '\n'))
		return EOF;
	if (sb->buf[sb->len - 1] == '\n') {
		FUNC1(sb, sb->len - 1);
		if (sb->len && sb->buf[sb->len - 1] == '\r')
			FUNC1(sb, sb->len - 1);
	}
	return 0;
}