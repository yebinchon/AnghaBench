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
struct grep_opt {int /*<<< orphan*/  pattern_tail; } ;
typedef  enum grep_pat_token { ____Placeholder_grep_pat_token } grep_pat_token ;

/* Variables and functions */
 struct grep_pat* FUNC0 (char const*,size_t,char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct grep_pat*) ; 

void FUNC2(struct grep_opt *opt, const char *pat, size_t patlen,
		     const char *origin, int no, enum grep_pat_token t)
{
	struct grep_pat *p = FUNC0(pat, patlen, origin, no, t, 0);
	FUNC1(&opt->pattern_tail, p);
}