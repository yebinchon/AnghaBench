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
struct grep_opt {scalar_t__ all_match; struct grep_expr* pattern_expression; } ;
struct grep_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grep_expr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(struct grep_opt *opt)
{
	struct grep_expr *x = opt->pattern_expression;

	if (opt->all_match)
		FUNC2(stderr, "[all-match]\n");
	FUNC0(x, 0);
	FUNC1(NULL);
}