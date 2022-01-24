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
struct grep_source {char* buf; int /*<<< orphan*/  name; } ;
struct grep_opt {unsigned int pre_context; unsigned int last_shown; scalar_t__ funcname; scalar_t__ funcbody; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (struct grep_opt*,struct grep_source*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_opt*,struct grep_source*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct grep_opt*,char*,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC4(struct grep_opt *opt, struct grep_source *gs,
			     char *bol, char *end, unsigned lno)
{
	unsigned cur = lno, from = 1, funcname_lno = 0, orig_from;
	int funcname_needed = !!opt->funcname, comment_needed = 0;

	if (opt->pre_context < lno)
		from = lno - opt->pre_context;
	if (from <= opt->last_shown)
		from = opt->last_shown + 1;
	orig_from = from;
	if (opt->funcbody) {
		if (FUNC1(opt, gs, bol, end))
			comment_needed = 1;
		else
			funcname_needed = 1;
		from = opt->last_shown + 1;
	}

	/* Rewind. */
	while (bol > gs->buf && cur > from) {
		char *next_bol = bol;
		char *eol = --bol;

		while (bol > gs->buf && bol[-1] != '\n')
			bol--;
		cur--;
		if (comment_needed && (FUNC0(bol, eol) ||
				       FUNC1(opt, gs, bol, eol))) {
			comment_needed = 0;
			from = orig_from;
			if (cur < from) {
				cur++;
				bol = next_bol;
				break;
			}
		}
		if (funcname_needed && FUNC1(opt, gs, bol, eol)) {
			funcname_lno = cur;
			funcname_needed = 0;
			if (opt->funcbody)
				comment_needed = 1;
			else
				from = orig_from;
		}
	}

	/* We need to look even further back to find a function signature. */
	if (opt->funcname && funcname_needed)
		FUNC2(opt, gs, bol, cur);

	/* Back forward. */
	while (cur < lno) {
		char *eol = bol, sign = (cur == funcname_lno) ? '=' : '-';

		while (*eol != '\n')
			eol++;
		FUNC3(opt, bol, eol, gs->name, cur, 0, sign);
		bol = eol + 1;
		cur++;
	}
}