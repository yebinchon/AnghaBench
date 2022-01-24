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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 

size_t FUNC2(struct strbuf *sb,
				const char *placeholder,
				void *context)
{
	int ch;

	switch (placeholder[0]) {
	case 'n':		/* newline */
		FUNC1(sb, '\n');
		return 1;
	case 'x':
		/* %x00 == NUL, %x0a == LF, etc. */
		ch = FUNC0(placeholder + 1);
		if (ch < 0)
			return 0;
		FUNC1(sb, ch);
		return 3;
	}
	return 0;
}