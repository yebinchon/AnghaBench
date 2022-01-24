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
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 

__attribute__((used)) static void FUNC2(struct strbuf *out, const char *s, int len)
{
	int i;

	/* just a guess, we may have to also backslash-quote */
	FUNC1(out, len + 2);

	FUNC0(out, '"');
	for (i = 0; i < len; i++) {
		switch (s[i]) {
		case '"':
		case '\\':
			FUNC0(out, '\\');
			/* fall through */
		default:
			FUNC0(out, s[i]);
		}
	}
	FUNC0(out, '"');
}