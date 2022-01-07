
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
 int SB_PRINT_I32 (int ) ;
 int SB_PRINT_I64 (int ) ;
 int SB_PRINT_QUERIES (int ) ;
 int SB_PRINT_TIME (int ) ;
 int STATS_BUFF_SIZE ;
 int active_aio_queries ;
 int active_gathers ;
 int aio_query_timeout_value ;
 int alloc_tree_nodes ;
 int append_to_binlog_time ;
 int bad_image_cache_max_living_time ;
 int binlog_disabled ;
 int binlog_index_loading_time ;
 int binlog_load_time ;
 int booting_time ;
 int choose_binlog_options ;
 int choose_reading_binlog_errors ;
 int cmd_stats ;
 int cmd_version ;
 int expired_aio_queries ;
 int gather_timeouts ;
 int get_file_queries ;
 int get_hide_queries ;
 int get_misses ;
 int get_queries ;
 int get_volume_misses ;
 int http_queries ;
 int idx_docs ;
 int index_load_time ;
 int index_size ;
 int max_aio_connections_per_disk ;
 int max_immediately_reply_filesize ;
 int max_metafiles_bytes ;
 int md5_mode ;
 int metafiles ;
 int metafiles_bytes ;
 int metafiles_cache_hits ;
 int metafiles_cancelled ;
 int metafiles_crc32_errors ;
 int metafiles_load_errors ;
 int metafiles_unloaded ;
 int one_pix_transparent_errors ;
 int open_replicas_time ;
 int redirect_retries ;
 int redirect_retries_content_type ;
 int redirect_retries_corrupted ;
 int redirect_retries_local_id ;
 int redirect_retries_meta_aio ;
 int redirect_retries_secret ;
 int redirect_retries_type ;
 int reoder_binlog_files_time ;
 int safe_div (int ,int ) ;
 int sb_memory (TYPE_1__*,scalar_t__) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,...) ;
 int scandir_time ;
 int snapshot_size ;
 int stats_buff ;
 int statvfs_calls ;
 int too_many_aio_connections_errors ;
 int tot_aio_fsync_queries ;
 int tot_aio_loaded_bytes ;
 int tot_aio_queries ;
 int tot_docs ;
 int total_aio_time ;
 int volumes ;
 int x_accel_redirects ;

int storage_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF + AM_GET_MEMORY_USAGE_OVERALL);

  SB_PRINT_TIME(booting_time);
  SB_PRINT_TIME(scandir_time);
  SB_PRINT_TIME(reoder_binlog_files_time);
  SB_PRINT_TIME(open_replicas_time);
  SB_PRINT_TIME(binlog_index_loading_time);
  SB_PRINT_TIME(append_to_binlog_time);
  SB_PRINT_TIME(binlog_load_time);
  SB_PRINT_TIME(index_load_time);
  sb_printf (&sb,
      "volumes\t%d\n"
      "binlog_disabled\t%d\n"
      "index_loaded_bytes\t%lld\n"
      "index_size\t%lld\n"
      "cmd_version\t%lld\n"
      "cmd_stats\t%lld\n"
      "tree_nodes\t%d\n"
      "tot_docs\t%lld\n"
      "idx_docs\t%lld\n"
      "md5_mode\t%d\n"
      "max_immediately_reply_filesize\t%d\n"
      "metafiles\t%d\n"
      "metafiles_unloaded\t%lld\n"
      "metafiles_load_errors\t%lld\n"
      "metafiles_crc32_errors\t%lld\n"
      "metafiles_cancelled\t%lld\n"
      "choose_reading_binlog_errors\t%lld\n"
      "metafiles_bytes\t%d\n"
      "max_metafiles_bytes\t%d\n"
      "tot_aio_queries\t%lld\n"
      "active_aio_queries\t%lld\n"
      "expired_aio_queries\t%lld\n"
      "avg_aio_query_time\t%.6f\n"
      "aio_bytes_loaded\t%lld\n"
      "aio_query_timeout\t%.3lfs\n"
      "metafiles_cache_hits\t%lld\n",
    volumes,
    binlog_disabled,
    snapshot_size,
    index_size,
    cmd_version,
    cmd_stats,
    alloc_tree_nodes,
    tot_docs,
    idx_docs,
    md5_mode,
    max_immediately_reply_filesize,
    metafiles,
    metafiles_unloaded,
    metafiles_load_errors,
    metafiles_crc32_errors,
    metafiles_cancelled,
    choose_reading_binlog_errors,
    metafiles_bytes,
    max_metafiles_bytes,
    tot_aio_queries,
    active_aio_queries,
    expired_aio_queries,
    safe_div (total_aio_time, tot_aio_queries),
    tot_aio_loaded_bytes,
    aio_query_timeout_value,
    metafiles_cache_hits
    );
  SB_PRINT_I32(max_aio_connections_per_disk);

  SB_PRINT_QUERIES(http_queries);
  SB_PRINT_QUERIES(get_queries);
  SB_PRINT_QUERIES(get_file_queries);
  SB_PRINT_QUERIES(get_hide_queries);
  SB_PRINT_I64(get_misses);
  SB_PRINT_I64(get_volume_misses);

  SB_PRINT_I64(x_accel_redirects);
  SB_PRINT_I64(one_pix_transparent_errors);
  SB_PRINT_I64(too_many_aio_connections_errors);
  SB_PRINT_I64(redirect_retries);
  SB_PRINT_I64(redirect_retries_meta_aio);
  SB_PRINT_I64(redirect_retries_corrupted);
  SB_PRINT_I64(redirect_retries_secret);
  SB_PRINT_I64(redirect_retries_type);
  SB_PRINT_I64(redirect_retries_content_type);
  SB_PRINT_I64(redirect_retries_local_id);

  SB_PRINT_I64(statvfs_calls);

  SB_PRINT_I32(active_gathers);
  SB_PRINT_I64(gather_timeouts);
  SB_PRINT_I64(tot_aio_fsync_queries);
  SB_PRINT_I32(bad_image_cache_max_living_time);

  sb_printf (&sb, "choose_binlog_options\t%s\n", choose_binlog_options);
  sb_printf (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}
