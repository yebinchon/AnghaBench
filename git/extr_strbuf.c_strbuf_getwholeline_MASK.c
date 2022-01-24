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
struct strbuf {int* buf; size_t len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

int FUNC7(struct strbuf *sb, FILE *fp, int term)
{
	int ch;

	if (FUNC0(fp))
		return EOF;

	FUNC6(sb);
	FUNC1(fp);
	while ((ch = FUNC3(fp)) != EOF) {
		if (!FUNC4(sb))
			FUNC5(sb, 1);
		sb->buf[sb->len++] = ch;
		if (ch == term)
			break;
	}
	FUNC2(fp);
	if (ch == EOF && sb->len == 0)
		return EOF;

	sb->buf[sb->len] = '\0';
	return 0;
}