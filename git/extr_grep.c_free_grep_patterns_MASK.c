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
struct grep_pat {int token; struct grep_pat* pattern; int /*<<< orphan*/  regexp; int /*<<< orphan*/  pcre2_pattern; int /*<<< orphan*/  pcre1_regexp; struct grep_pat* next; } ;
struct grep_opt {int /*<<< orphan*/  pattern_expression; int /*<<< orphan*/  extended; struct grep_pat* pattern_list; } ;

/* Variables and functions */
#define  GREP_PATTERN 130 
#define  GREP_PATTERN_BODY 129 
#define  GREP_PATTERN_HEAD 128 
 int /*<<< orphan*/  FUNC0 (struct grep_pat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_pat*) ; 
 int /*<<< orphan*/  FUNC3 (struct grep_pat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct grep_opt *opt)
{
	struct grep_pat *p, *n;

	for (p = opt->pattern_list; p; p = n) {
		n = p->next;
		switch (p->token) {
		case GREP_PATTERN: /* atom */
		case GREP_PATTERN_HEAD:
		case GREP_PATTERN_BODY:
			if (p->pcre1_regexp)
				FUNC2(p);
			else if (p->pcre2_pattern)
				FUNC3(p);
			else
				FUNC4(&p->regexp);
			FUNC0(p->pattern);
			break;
		default:
			break;
		}
		FUNC0(p);
	}

	if (!opt->extended)
		return;
	FUNC1(opt->pattern_expression);
}