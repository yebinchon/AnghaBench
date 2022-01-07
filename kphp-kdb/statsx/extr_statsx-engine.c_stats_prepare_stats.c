
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_5__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;


 scalar_t__ AM_GET_MEMORY_USAGE_OVERALL ;
 scalar_t__ AM_GET_MEMORY_USAGE_SELF ;
 int FullVersionStr ;
 int SB_BINLOG ;
 int SB_INDEX ;
 int STATS_BUFF_SIZE ;
 int active_aio_queries ;
 int alloc_tree_nodes ;
 int counters_prime ;
 int deleted_by_lru ;
 int expired_aio_queries ;
 int index_size ;
 int max_counters ;
 int memory_to_index ;
 int percent (int ,int ) ;
 int sb_memory (TYPE_1__*,scalar_t__) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int,int ,int,int ,int ,int ) ;
 int snapshot_loading_average_blocking_read_bytes ;
 int snapshot_loading_blocking_read_calls ;
 int stats_buff ;
 int tot_aio_fails ;
 int tot_aio_loaded_bytes ;
 int tot_aio_queries ;
 int tot_counter_instances ;
 int tot_counters ;
 int tot_counters_allocated ;
 int tot_memory_allocated ;
 int tot_user_metafile_bytes ;
 int tot_user_metafiles ;
 int tot_views ;
 int total_aio_time ;

int stats_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF + AM_GET_MEMORY_USAGE_OVERALL);
  SB_BINLOG;
  SB_INDEX;

  sb_printf (&sb,
      "snapshot_loading_average_blocking_read_bytes\t%.6f\n"
      "snapshot_loading_blocking_read_calls\t%d\n"
      "tot_user_metafiles\t%d\n"
      "tot_user_metafile_bytes\t%lld\n"
      "counters\t%d\n"
      "counters_percent\t%.6f\n"
      "counters_prime\t%d\n"
      "total_views\t%lld\n"
      "tree_nodes_allocated\t%d\n"
      "counter_instances\t%d\n"
      "counter_instances_percent\t%.6f\n"
      "allocated_counter_instances\t%d\n"
      "deleted_by_LRU\t%lld\n"
      "allocated_memory\t%lld\n"
      "tot_aio_queries\t%lld\n"
      "active_aio_queries\t%lld\n"
      "expired_aio_queries\t%lld\n"
      "avg_aio_query_time\t%.6f\n"
      "aio_bytes_loaded\t%lld\n"
      "tot_aio_queries\t%lld\n"
      "tot_aio_fails\t%lld\n"
      "memory_to_index\t%lld\n"
      "version\t%s\n",
    snapshot_loading_average_blocking_read_bytes,
    snapshot_loading_blocking_read_calls,
    tot_user_metafiles,
    tot_user_metafile_bytes,
    tot_counters,
    percent (tot_counters, max_counters),
    counters_prime,
    tot_views,
    alloc_tree_nodes,
    tot_counter_instances,
    percent (tot_counter_instances, index_size),
    tot_counters_allocated,
    deleted_by_lru,
    tot_memory_allocated,
    tot_aio_queries,
    active_aio_queries,
    expired_aio_queries,
    tot_aio_queries > 0 ? total_aio_time / tot_aio_queries : 0,
    tot_aio_loaded_bytes,
    tot_aio_queries,
    tot_aio_fails,
    memory_to_index,
    FullVersionStr
    );
  return sb.pos;
}
