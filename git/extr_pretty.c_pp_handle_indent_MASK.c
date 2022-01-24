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
struct pretty_print_context {scalar_t__ expand_tabs_in_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char,int) ; 

__attribute__((used)) static void FUNC3(struct pretty_print_context *pp,
			     struct strbuf *sb, int indent,
			     const char *line, int linelen)
{
	FUNC2(sb, ' ', indent);
	if (pp->expand_tabs_in_log)
		FUNC1(sb, pp->expand_tabs_in_log, line, linelen);
	else
		FUNC0(sb, line, linelen);
}