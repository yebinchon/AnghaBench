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
struct grep_pat {int /*<<< orphan*/  regexp; scalar_t__ pcre2_pattern; scalar_t__ pcre1_regexp; } ;
typedef  int /*<<< orphan*/  regmatch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grep_pat*,char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_pat*,char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct grep_pat *p, char *line, char *eol,
		    regmatch_t *match, int eflags)
{
	int hit;

	if (p->pcre1_regexp)
		hit = !FUNC0(p, line, eol, match, eflags);
	else if (p->pcre2_pattern)
		hit = !FUNC1(p, line, eol, match, eflags);
	else
		hit = !FUNC2(&p->regexp, line, eol - line, 1, match,
				   eflags);

	return hit;
}