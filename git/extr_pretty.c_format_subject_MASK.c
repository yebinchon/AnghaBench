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
 scalar_t__ FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int) ; 

const char *FUNC5(struct strbuf *sb, const char *msg,
			   const char *line_separator)
{
	int first = 1;

	for (;;) {
		const char *line = msg;
		int linelen = FUNC0(line);

		msg += linelen;
		if (!linelen || FUNC1(line, &linelen))
			break;

		if (!sb)
			continue;
		FUNC4(sb, linelen + 2);
		if (!first)
			FUNC3(sb, line_separator);
		FUNC2(sb, line, linelen);
		first = 0;
	}
	return msg;
}