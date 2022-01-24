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
 scalar_t__ AM_GET_MEMORY_USAGE_OVERALL ; 
 scalar_t__ AM_GET_MEMORY_USAGE_SELF ; 
 int /*<<< orphan*/  FullVersionStr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  active_aio_queries ; 
 int /*<<< orphan*/  active_gathers ; 
 int /*<<< orphan*/  aio_query_timeout_value ; 
 int /*<<< orphan*/  alloc_tree_nodes ; 
 int /*<<< orphan*/  append_to_binlog_time ; 
 int /*<<< orphan*/  bad_image_cache_max_living_time ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  binlog_index_loading_time ; 
 int /*<<< orphan*/  binlog_load_time ; 
 int /*<<< orphan*/  booting_time ; 
 int /*<<< orphan*/  choose_binlog_options ; 
 int /*<<< orphan*/  choose_reading_binlog_errors ; 
 int /*<<< orphan*/  cmd_stats ; 
 int /*<<< orphan*/  cmd_version ; 
 int /*<<< orphan*/  expired_aio_queries ; 
 int /*<<< orphan*/  gather_timeouts ; 
 int /*<<< orphan*/  get_file_queries ; 
 int /*<<< orphan*/  get_hide_queries ; 
 int /*<<< orphan*/  get_misses ; 
 int /*<<< orphan*/  get_queries ; 
 int /*<<< orphan*/  get_volume_misses ; 
 int /*<<< orphan*/  http_queries ; 
 int /*<<< orphan*/  idx_docs ; 
 int /*<<< orphan*/  index_load_time ; 
 int /*<<< orphan*/  index_size ; 
 int /*<<< orphan*/  max_aio_connections_per_disk ; 
 int /*<<< orphan*/  max_immediately_reply_filesize ; 
 int /*<<< orphan*/  max_metafiles_bytes ; 
 int /*<<< orphan*/  md5_mode ; 
 int /*<<< orphan*/  metafiles ; 
 int /*<<< orphan*/  metafiles_bytes ; 
 int /*<<< orphan*/  metafiles_cache_hits ; 
 int /*<<< orphan*/  metafiles_cancelled ; 
 int /*<<< orphan*/  metafiles_crc32_errors ; 
 int /*<<< orphan*/  metafiles_load_errors ; 
 int /*<<< orphan*/  metafiles_unloaded ; 
 int /*<<< orphan*/  one_pix_transparent_errors ; 
 int /*<<< orphan*/  open_replicas_time ; 
 int /*<<< orphan*/  redirect_retries ; 
 int /*<<< orphan*/  redirect_retries_content_type ; 
 int /*<<< orphan*/  redirect_retries_corrupted ; 
 int /*<<< orphan*/  redirect_retries_local_id ; 
 int /*<<< orphan*/  redirect_retries_meta_aio ; 
 int /*<<< orphan*/  redirect_retries_secret ; 
 int /*<<< orphan*/  redirect_retries_type ; 
 int /*<<< orphan*/  reoder_binlog_files_time ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  scandir_time ; 
 int /*<<< orphan*/  snapshot_size ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  statvfs_calls ; 
 int /*<<< orphan*/  too_many_aio_connections_errors ; 
 int /*<<< orphan*/  tot_aio_fsync_queries ; 
 int /*<<< orphan*/  tot_aio_loaded_bytes ; 
 int /*<<< orphan*/  tot_aio_queries ; 
 int /*<<< orphan*/  tot_docs ; 
 int /*<<< orphan*/  total_aio_time ; 
 int /*<<< orphan*/  volumes ; 
 int /*<<< orphan*/  x_accel_redirects ; 

int FUNC8 (struct connection *c) {
  stats_buffer_t sb;
  FUNC6 (&sb, c, stats_buff, STATS_BUFF_SIZE);
  FUNC5 (&sb, AM_GET_MEMORY_USAGE_SELF + AM_GET_MEMORY_USAGE_OVERALL);

  FUNC3(booting_time);
  FUNC3(scandir_time);
  FUNC3(reoder_binlog_files_time);
  FUNC3(open_replicas_time);
  FUNC3(binlog_index_loading_time);
  FUNC3(append_to_binlog_time);
  FUNC3(binlog_load_time);
  FUNC3(index_load_time);
  FUNC7 (&sb,
      "volumes\t%d\n"
      "binlog_disabled\t%d\n"
      "index_loaded_bytes\t%lld\n"
      "index_size\t%lld\n"
/*
      "binlog_original_size\t%lld\n"
      "binlog_loaded_bytes\t%lld\n"
      "binlog_load_time\t%.6fs\n"
      "current_binlog_size\t%lld\n"
      "binlog_uncommitted_bytes\t%d\n"
      "binlog_path\t%s\n"
      "binlog_first_timestamp\t%d\n"
      "binlog_read_timestamp\t%d\n"
      "binlog_last_timestamp\t%d\n"
      "index_loaded_bytes\t%lld\n"
      "index_size\t%lld\n"
      "index_path\t%s\n"
      "index_load_time\t%.6fs\n"
*/
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
/*
    binlog_loaded_size,
    log_readto_pos - jump_log_pos,
    binlog_load_time,
    log_pos,
    log_uncommitted,
    binlogname ? (sizeof(binlogname) < 250 ? binlogname : "(too long)") : "(none)",
    log_first_ts,
    log_read_until,
    log_last_ts,
		idx_loaded_bytes,
		engine_snapshot_size,
    engine_snapshot_name,
    index_load_time,
*/
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
    FUNC4 (total_aio_time, tot_aio_queries),
    tot_aio_loaded_bytes,
    aio_query_timeout_value,
    metafiles_cache_hits
    );
  FUNC0(max_aio_connections_per_disk);

  FUNC2(http_queries);
  FUNC2(get_queries);
  FUNC2(get_file_queries);
  FUNC2(get_hide_queries);
  FUNC1(get_misses);
  FUNC1(get_volume_misses);

  FUNC1(x_accel_redirects);
  FUNC1(one_pix_transparent_errors);
  FUNC1(too_many_aio_connections_errors);
  FUNC1(redirect_retries);
  FUNC1(redirect_retries_meta_aio);
  FUNC1(redirect_retries_corrupted);
  FUNC1(redirect_retries_secret);
  FUNC1(redirect_retries_type);
  FUNC1(redirect_retries_content_type);
  FUNC1(redirect_retries_local_id);

  FUNC1(statvfs_calls);

  FUNC0(active_gathers);
  FUNC1(gather_timeouts);
  FUNC1(tot_aio_fsync_queries);
  FUNC0(bad_image_cache_max_living_time);

  FUNC7 (&sb, "choose_binlog_options\t%s\n", choose_binlog_options);
  FUNC7 (&sb, "version\t%s\n", FullVersionStr);

  return sb.pos;
}