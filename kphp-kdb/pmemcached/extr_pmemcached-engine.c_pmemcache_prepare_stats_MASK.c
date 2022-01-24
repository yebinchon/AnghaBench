#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_7__ {int pos; } ;
typedef  TYPE_1__ stats_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  AM_GET_MEMORY_USAGE_SELF ; 
 int /*<<< orphan*/  FullVersionStr ; 
 int /*<<< orphan*/  SB_BINLOG ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  cmd_decr ; 
 int /*<<< orphan*/  cmd_delete ; 
 int /*<<< orphan*/  cmd_get ; 
 int /*<<< orphan*/  cmd_incr ; 
 int /*<<< orphan*/  cmd_set ; 
 int /*<<< orphan*/  cmd_stats ; 
 int /*<<< orphan*/  cmd_version ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  engine_snapshot_name ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  get_hits ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  get_missed ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  index_load_time ; 
 int /*<<< orphan*/  index_size ; 
 int last_reindex_on_low_memory_time ; 
 scalar_t__ malloc_mem ; 
 int /*<<< orphan*/  max_memory ; 
 int now ; 
 scalar_t__ reindex_on_low_memory ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,long,...) ; 
 int /*<<< orphan*/  snapshot_size ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  tot_response_bytes ; 
 int /*<<< orphan*/  tot_response_words ; 
 int /*<<< orphan*/  total_items ; 
 int /*<<< orphan*/  wildcard_arrays_allocated ; 
 int /*<<< orphan*/  wildcard_cache_entries ; 
 int /*<<< orphan*/  wildcard_cache_memory ; 
 scalar_t__ zalloc_mem ; 

int FUNC8 (struct connection *c) {
  stats_buffer_t sb;
  FUNC6 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC5 (&sb, AM_GET_MEMORY_USAGE_SELF);
  FUNC7 (&sb,
    "malloc_mem\t%ld\n"
    "zalloc_mem\t%ld\n",
    (long) malloc_mem,
    (long) zalloc_mem);

  SB_BINLOG;
  FUNC7 (&sb,
        "index_loaded_bytes\t%lld\n"
        "index_size\t%lld\n"
        "index_path\t%s\n"
        "index_load_time\t%.6lfs\n"
        "pid\t%d\n"
        "snapshot_size\t%d\n"
        "curr_items\t%d\n"
        "total_items\t%lld\n"
        "current_memory_used\t%lld\n"
        "cmd_get\t%lld\n"
        "cmd_set\t%lld\n"
        "get_hits\t%lld\n"
        "get_misses\t%lld\n"
        "cmd_incr\t%lld\n"
        "cmd_decr\t%lld\n"
        "cmd_delete\t%lld\n"
        "cmd_version\t%lld\n"
        "cmd_stats\t%lld\n"
        "total_response_words\t%lld\n"
        "total_response_bytes\t%lld\n"
        "limit_max_dynamic_memory\t%lld\n"
        "reindex_on_low_memory\t%d\n"
        "reindex_on_low_memory_time_ago\t%d\n"
        "wildcard_arrays_allocated\t%d\n"
        "wildcard_cache_memory\t%lld\n"
        "wildcard_cache_entries\t%d\n",
        snapshot_size,
        index_size,
        engine_snapshot_name,
        index_load_time,
        FUNC4(),
        (int)(sizeof(int*)*8),
        FUNC2(),
        total_items,
        FUNC3(),
        cmd_get,
        cmd_set,
        get_hits,
        get_missed,
        cmd_incr,
        cmd_decr,
        cmd_delete,
        cmd_version,
        cmd_stats,
        tot_response_words,
        tot_response_bytes,
        max_memory,
        reindex_on_low_memory,
        reindex_on_low_memory ? now - last_reindex_on_low_memory_time: -1,
        wildcard_arrays_allocated,
        wildcard_cache_memory,
        wildcard_cache_entries);
  FUNC1 (&sb);
  FUNC0 (&sb);
  FUNC7 (&sb, "%s\n", FullVersionStr);
  return sb.pos;

}