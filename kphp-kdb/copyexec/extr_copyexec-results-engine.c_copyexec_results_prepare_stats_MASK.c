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
struct connection {int dummy; } ;
struct TYPE_5__ {int pos; } ;
typedef  TYPE_1__ stats_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  AM_GET_MEMORY_USAGE_SELF ; 
 int /*<<< orphan*/  FullVersionStr ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  alloc_tree_nodes ; 
 int /*<<< orphan*/  binlog_load_time ; 
 int /*<<< orphan*/  binlog_loaded_size ; 
 char* binlogname ; 
 int /*<<< orphan*/  cmd_get ; 
 int /*<<< orphan*/  cmd_stats ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  free_tree_nodes ; 
 int /*<<< orphan*/  FUNC2 (long long*,int) ; 
 int /*<<< orphan*/  hosts ; 
 int /*<<< orphan*/  log_first_ts ; 
 int /*<<< orphan*/  log_last_ts ; 
 int /*<<< orphan*/  log_pos ; 
 int /*<<< orphan*/  log_read_until ; 
 int /*<<< orphan*/  log_readto_pos ; 
 int /*<<< orphan*/  max_lru_size ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stats_buff ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  tot_memory_transactions ; 

int FUNC7 (struct connection *c) {
  int log_uncommitted = FUNC0();
  FUNC1 ();
  long long a[7];
  FUNC2 (a, 7);

  stats_buffer_t sb;
  FUNC4 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC3 (&sb, AM_GET_MEMORY_USAGE_SELF);

  FUNC5 (&sb,
      "binlog_original_size\t%lld\n"
      "binlog_loaded_bytes\t%lld\n"
      "binlog_load_time\t%.6fs\n"
      "current_binlog_size\t%lld\n"
      "binlog_uncommitted_bytes\t%d\n"
      "binlog_path\t%s\n"
      "binlog_first_timestamp\t%d\n"
      "binlog_read_timestamp\t%d\n"
      "binlog_last_timestamp\t%d\n"
      "cmd_get\t%lld\n"
      "cmd_stats\t%lld\n"
      "hosts\t%d\n"
      "tot_memory_transactions\t%d\n"
      "max_memory_transactions\t%d\n"
      "alloc_tree_nodes\t%d\n"
      "free_tree_nodes\t%d\n"
      "version\t%s\n",
    log_readto_pos,
    binlog_loaded_size,
    binlog_load_time,
    log_pos,
    log_uncommitted,
    binlogname ? (FUNC6(binlogname) < 250 ? binlogname : "(too long)") : "(none)",
    log_first_ts,
    log_read_until,
    log_last_ts,
    cmd_get,
    cmd_stats,
    hosts,
    tot_memory_transactions,
    max_lru_size,
    alloc_tree_nodes,
    free_tree_nodes,
    FullVersionStr);
  return sb.pos;
}