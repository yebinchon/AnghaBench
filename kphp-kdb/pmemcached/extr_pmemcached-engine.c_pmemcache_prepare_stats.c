
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_7__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;


 int AM_GET_MEMORY_USAGE_SELF ;
 int FullVersionStr ;
 int SB_BINLOG ;
 int STATS_BUFF_SIZE ;
 int cmd_decr ;
 int cmd_delete ;
 int cmd_get ;
 int cmd_incr ;
 int cmd_set ;
 int cmd_stats ;
 int cmd_version ;
 int custom_prepare_stats (TYPE_1__*) ;
 int data_prepare_stats (TYPE_1__*) ;
 int engine_snapshot_name ;
 int get_entry_cnt () ;
 int get_hits ;
 int get_memory_used () ;
 int get_missed ;
 int getpid () ;
 int index_load_time ;
 int index_size ;
 int last_reindex_on_low_memory_time ;
 scalar_t__ malloc_mem ;
 int max_memory ;
 int now ;
 scalar_t__ reindex_on_low_memory ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,long,...) ;
 int snapshot_size ;
 int stats_buff ;
 int tot_response_bytes ;
 int tot_response_words ;
 int total_items ;
 int wildcard_arrays_allocated ;
 int wildcard_cache_entries ;
 int wildcard_cache_memory ;
 scalar_t__ zalloc_mem ;

int pmemcache_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  sb_printf (&sb,
    "malloc_mem\t%ld\n"
    "zalloc_mem\t%ld\n",
    (long) malloc_mem,
    (long) zalloc_mem);

  SB_BINLOG;
  sb_printf (&sb,
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
        getpid(),
        (int)(sizeof(int*)*8),
        get_entry_cnt(),
        total_items,
        get_memory_used(),
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
  data_prepare_stats (&sb);
  custom_prepare_stats (&sb);
  sb_printf (&sb, "%s\n", FullVersionStr);
  return sb.pos;

}
