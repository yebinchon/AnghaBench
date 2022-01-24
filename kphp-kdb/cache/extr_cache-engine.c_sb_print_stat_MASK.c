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
struct query_stat {scalar_t__ t; scalar_t__ sum_time; int /*<<< orphan*/  max_time; } ;
typedef  int /*<<< orphan*/  stats_buffer_t ;

/* Variables and functions */
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const* const,int /*<<< orphan*/ ,...) ; 
 scalar_t__ start_time ; 

void FUNC2 (stats_buffer_t *sb, struct query_stat *S, const char *const desc) {
  FUNC1 (sb, "%s_queries\t%lld\nqps_%s\t%.3lf\n", desc, S->t, desc, FUNC0 (S->t, now - start_time));
  FUNC1 (sb, "%s_max_query_time\t%.3lfs\n", desc, S->max_time);
  FUNC1 (sb, "%s_avg_query_time\t%.3lfs\n", desc, FUNC0 (S->sum_time, S->t));
}