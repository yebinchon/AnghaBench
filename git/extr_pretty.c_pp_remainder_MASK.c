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
struct pretty_print_context {scalar_t__ fmt; scalar_t__ expand_tabs_in_log; } ;

/* Variables and functions */
 scalar_t__ CMIT_FMT_MBOXRD ; 
 scalar_t__ CMIT_FMT_SHORT ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pretty_print_context*,struct strbuf*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int) ; 

void FUNC8(struct pretty_print_context *pp,
		  const char **msg_p,
		  struct strbuf *sb,
		  int indent)
{
	int first = 1;
	for (;;) {
		const char *line = *msg_p;
		int linelen = FUNC0(line);
		*msg_p += linelen;

		if (!linelen)
			break;

		if (FUNC1(line, &linelen)) {
			if (first)
				continue;
			if (pp->fmt == CMIT_FMT_SHORT)
				break;
		}
		first = 0;

		FUNC7(sb, linelen + indent + 20);
		if (indent)
			FUNC3(pp, sb, indent, line, linelen);
		else if (pp->expand_tabs_in_log)
			FUNC5(sb, pp->expand_tabs_in_log,
					     line, linelen);
		else {
			if (pp->fmt == CMIT_FMT_MBOXRD &&
					FUNC2(line, linelen))
				FUNC6(sb, '>');

			FUNC4(sb, line, linelen);
		}
		FUNC6(sb, '\n');
	}
}