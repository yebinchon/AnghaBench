
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_5__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;


 int AM_GET_MEMORY_USAGE_SELF ;
 scalar_t__ COMM_MODE ;
 int FullVersionStr ;
 scalar_t__ RECOMMEND_MODE ;
 int SB_BINLOG ;
 int SB_INDEX ;
 int SB_PRINT_I32 (int ) ;
 int SB_PRINT_I64 (int ) ;
 int SB_PRINT_QUERIES (int ) ;
 int STATS_BUFF_SIZE ;
 int active_aio_queries ;
 int allocated_metafiles_size ;
 scalar_t__ bookmarks_ptr ;
 int comments_kept ;
 int delete_queries ;
 int dups_removed_in_process_raw_updates ;
 int dups_users_removed_from_urlist ;
 int expired_aio_queries ;
 int garbage_objects_collected ;
 int garbage_users_collected ;
 int get_max_raw_recommend_updates_queries ;
 int get_raw_recommend_updates_queries ;
 int items_kept ;
 int items_removed_in_prepare_updates ;
 int items_removed_in_process_new ;
 int large_users_number ;
 scalar_t__ last_collect_garbage_time ;
 int loadavg_last_minute ;
 int max_allocated_metafiles_size ;
 int max_news_days ;
 int max_uid ;
 int metafiles_cache_loading ;
 int metafiles_cache_miss ;
 int metafiles_cache_ok ;
 int metafiles_load_errors ;
 int metafiles_load_success ;
 int metafiles_loaded ;
 int metafiles_unloaded ;
 int minor_update_queries ;
 scalar_t__ new_users_number ;
 scalar_t__ now ;
 int safe_div (int ,int ) ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,...) ;
 int skipped_set_recommend_updates_queries ;
 int small_users_number ;
 int stats_buff ;
 int tot_aio_loaded_bytes ;
 int tot_aio_queries ;
 int tot_places ;
 int tot_raw_recommend_updates_records ;
 int tot_users ;
 int total_aio_time ;
 int ug_mode ;
 int undelete_queries ;
 int update_queries ;

int news_prepare_stats (struct connection *c) {
  const char *const sobjs = COMM_MODE ? "comments" : "items";
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  sb_printf (&sb, "user_group_mode\t%d\n", ug_mode);

  SB_BINLOG;
  SB_INDEX;

  SB_PRINT_QUERIES (delete_queries);
  SB_PRINT_QUERIES (undelete_queries);
  SB_PRINT_QUERIES (update_queries);
  SB_PRINT_QUERIES (minor_update_queries);

  if (RECOMMEND_MODE) {
    SB_PRINT_QUERIES (get_raw_recommend_updates_queries);
    SB_PRINT_QUERIES (get_max_raw_recommend_updates_queries);
    SB_PRINT_QUERIES (skipped_set_recommend_updates_queries);
    sb_printf (&sb, "raw_recommend_updates_avg_returned_records\t%.3lf\n", safe_div (tot_raw_recommend_updates_records, get_raw_recommend_updates_queries));
  }

  SB_PRINT_I32 (max_news_days);

  sb_printf (&sb,
    "memory_users\t%d\n"
    "max_uid\t%d\n"
    "total_items\t%d\n"
    "total_places\t%d\n"
    "total_comments\t%d\n"
    "loadavg_last_minute\t%.6f\n"
    "garbage_collection_uptime\t%d\n"
    "%s_removed_in_process_new\t%lld\n"
    "%s_removed_in_prepare_updates\t%lld\n"
    "%s_removed_by_garbage_collector\t%lld\n",
    tot_users,
    max_uid,
    items_kept,
    tot_places,
    comments_kept,
    loadavg_last_minute,
    now - last_collect_garbage_time,
    sobjs, items_removed_in_process_new,
    sobjs, items_removed_in_prepare_updates,
    sobjs, garbage_objects_collected);

  if (RECOMMEND_MODE) {
    SB_PRINT_I64 (dups_removed_in_process_raw_updates);
    SB_PRINT_I64 (dups_users_removed_from_urlist);
  }

  SB_PRINT_I64 (garbage_users_collected);

  if (COMM_MODE) {
    sb_printf (&sb,
      "small_users_in_index\t%d\n"
      "large_users_in_index\t%d\n"
      "users_with_new_bookmarks\t%d\n"
      "new_bookmarks\t%d\n"
      "tot_aio_queries\t%lld\n"
      "active_aio_queries\t%lld\n"
      "expired_aio_queries\t%lld\n"
      "avg_aio_query_time\t%.6f\n"
      "metafiles_load_errors\t%d\n"
      "metafiles_load_success\t%d\n"
      "metafiles_in_memory\t%d\n"
      "metafiles_unloaded\t%d\n"
      "total_aio_loaded_bytes\t%lld\n"
      "allocated_metafiles_size\t%lld\n"
      "max_allocated_metafiles_size\t%lld\n"
      "metafiles_cache_miss\t%lld\n"
      "metafiles_cache_ok\t%lld\n"
      "metafiles_cache_loading\t%lld\n",
    small_users_number,
    large_users_number,
    new_users_number,
    (bookmarks_ptr > 0 ? bookmarks_ptr : -bookmarks_ptr) - new_users_number,
    tot_aio_queries,
    active_aio_queries,
    expired_aio_queries,
    tot_aio_queries > 0 ? total_aio_time / tot_aio_queries : 0,
    metafiles_load_errors,
    metafiles_load_success,
    metafiles_loaded,
    metafiles_unloaded,
    tot_aio_loaded_bytes,
    allocated_metafiles_size,
    max_allocated_metafiles_size,
    metafiles_cache_miss,
    metafiles_cache_ok,
    metafiles_cache_loading);
  }

  sb_printf (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}
