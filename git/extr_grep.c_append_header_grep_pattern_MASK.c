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
struct grep_pat {int dummy; } ;
struct grep_opt {int use_reflog_filter; int /*<<< orphan*/  header_tail; } ;
typedef  enum grep_header_field { ____Placeholder_grep_header_field } grep_header_field ;

/* Variables and functions */
 int GREP_HEADER_REFLOG ; 
 int /*<<< orphan*/  GREP_PATTERN_HEAD ; 
 struct grep_pat* FUNC0 (char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct grep_pat*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(struct grep_opt *opt,
				enum grep_header_field field, const char *pat)
{
	struct grep_pat *p = FUNC0(pat, FUNC2(pat), "header", 0,
					     GREP_PATTERN_HEAD, field);
	if (field == GREP_HEADER_REFLOG)
		opt->use_reflog_filter = 1;
	FUNC1(&opt->header_tail, p);
}