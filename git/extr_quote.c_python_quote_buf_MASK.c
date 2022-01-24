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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const) ; 

void FUNC1(struct strbuf *sb, const char *src)
{
	const char sq = '\'';
	const char bq = '\\';
	const char nl = '\n';
	char c;

	FUNC0(sb, sq);
	while ((c = *src++)) {
		if (c == nl) {
			FUNC0(sb, bq);
			FUNC0(sb, 'n');
			continue;
		}
		if (c == sq || c == bq)
			FUNC0(sb, bq);
		FUNC0(sb, c);
	}
	FUNC0(sb, sq);
}