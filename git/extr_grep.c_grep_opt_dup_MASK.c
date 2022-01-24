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
struct grep_pat {scalar_t__ token; int /*<<< orphan*/  no; int /*<<< orphan*/  origin; int /*<<< orphan*/  patternlen; int /*<<< orphan*/  pattern; int /*<<< orphan*/  field; struct grep_pat* next; } ;
struct grep_opt {struct grep_pat* pattern_list; struct grep_pat** pattern_tail; } ;

/* Variables and functions */
 scalar_t__ GREP_PATTERN_HEAD ; 
 int /*<<< orphan*/  FUNC0 (struct grep_opt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_opt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct grep_opt* FUNC2 (int) ; 

struct grep_opt *FUNC3(const struct grep_opt *opt)
{
	struct grep_pat *pat;
	struct grep_opt *ret = FUNC2(sizeof(struct grep_opt));
	*ret = *opt;

	ret->pattern_list = NULL;
	ret->pattern_tail = &ret->pattern_list;

	for(pat = opt->pattern_list; pat != NULL; pat = pat->next)
	{
		if(pat->token == GREP_PATTERN_HEAD)
			FUNC1(ret, pat->field,
						   pat->pattern);
		else
			FUNC0(ret, pat->pattern, pat->patternlen,
					pat->origin, pat->no, pat->token);
	}

	return ret;
}