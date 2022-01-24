#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  avg; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ weights_half_life_stat_t ;
struct connection {int dummy; } ;
struct TYPE_8__ {int pos; } ;
typedef  TYPE_2__ stats_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  AM_GET_MEMORY_USAGE_SELF ; 
 int /*<<< orphan*/  FullVersionStr ; 
 int /*<<< orphan*/  SB_BINLOG ; 
 int /*<<< orphan*/  SB_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  at_queries ; 
 int /*<<< orphan*/  get_vector_queries ; 
 int /*<<< orphan*/  incr_queries ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_half_life_queries ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  tot_amortization_tables ; 
 int /*<<< orphan*/  tot_counters_arrays ; 
 int /*<<< orphan*/  tot_subscriptions ; 
 int /*<<< orphan*/  tot_vectors ; 
 int /*<<< orphan*/  vector_hash_prime ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6 (struct connection *c) {
  stats_buffer_t sb;
  FUNC3 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC2 (&sb, AM_GET_MEMORY_USAGE_SELF);
  SB_BINLOG;
  SB_INDEX;

  FUNC1(incr_queries);
  FUNC1(set_half_life_queries);
  FUNC1(at_queries);
  FUNC1(get_vector_queries);

  FUNC0(tot_vectors);
  FUNC0(tot_amortization_tables);
  FUNC0(tot_counters_arrays);
  FUNC0(tot_subscriptions);
  FUNC0(vector_hash_prime);

  weights_half_life_stat_t half_life;
  FUNC5 (&half_life);
  FUNC0(half_life.min);
  FUNC0(half_life.max);
  FUNC4 (&sb, "half_life.avg\t%.3lf\n", half_life.avg);

  FUNC4 (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}