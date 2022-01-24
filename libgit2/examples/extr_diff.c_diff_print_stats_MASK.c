#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct opts {int output; } ;
typedef  int /*<<< orphan*/  git_diff_stats_format_t ;
typedef  int /*<<< orphan*/  git_diff_stats ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_DIFF_STATS_FULL ; 
 int /*<<< orphan*/  GIT_DIFF_STATS_INCLUDE_SUMMARY ; 
 int /*<<< orphan*/  GIT_DIFF_STATS_NUMBER ; 
 int /*<<< orphan*/  GIT_DIFF_STATS_SHORT ; 
 int OUTPUT_NUMSTAT ; 
 int OUTPUT_SHORTSTAT ; 
 int OUTPUT_STAT ; 
 int OUTPUT_SUMMARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC7(git_diff *diff, struct opts *o)
{
	git_diff_stats *stats;
	git_buf b = FUNC0(NULL, 0);
	git_diff_stats_format_t format = 0;

	FUNC1(
		FUNC4(&stats, diff), "generating stats for diff", NULL);

	if (o->output & OUTPUT_STAT)
		format |= GIT_DIFF_STATS_FULL;
	if (o->output & OUTPUT_SHORTSTAT)
		format |= GIT_DIFF_STATS_SHORT;
	if (o->output & OUTPUT_NUMSTAT)
		format |= GIT_DIFF_STATS_NUMBER;
	if (o->output & OUTPUT_SUMMARY)
		format |= GIT_DIFF_STATS_INCLUDE_SUMMARY;

	FUNC1(
		FUNC6(&b, stats, format, 80), "formatting stats", NULL);

	FUNC2(b.ptr, stdout);

	FUNC3(&b);
	FUNC5(stats);
}