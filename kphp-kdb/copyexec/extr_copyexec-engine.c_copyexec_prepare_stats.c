
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_5__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;


 int AM_GET_MEMORY_USAGE_SELF ;
 int FullVersionStr ;
 int STATS_BUFF_SIZE ;
 char* aux_binlogname ;
 int aux_log_read_start ;
 int aux_log_readto_pos ;
 int aux_volume_id ;
 int binlog_load_time ;
 char* binlogname ;
 int compute_uncommitted_log_bytes () ;
 int engine_snapshot_name ;
 int engine_snapshot_size ;
 int first_transaction_id ;
 int get_running_lists_size (int*,int*) ;
 int index_load_time ;
 int instance_mask ;
 scalar_t__ jump_log_pos ;
 int log_first_ts ;
 int log_last_ts ;
 int log_pos ;
 int log_read_until ;
 scalar_t__ log_readto_pos ;
 int main_volume_id ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,scalar_t__,scalar_t__,int ,int ,int,char*,int ,int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stats_buffer ;
 int strlen (char*) ;
 int tot_cancelled ;
 int tot_decryption_failed ;
 int tot_failed ;
 int tot_ignored ;
 int tot_interrupted ;
 int tot_io_failed ;
 int tot_memory_transactions ;
 int tot_terminated ;
 int transactions ;

int copyexec_prepare_stats (struct connection *c) {
  int log_uncommitted = compute_uncommitted_log_bytes ();
  int child_running_list_size, auto_running_list_size;

  get_running_lists_size (&child_running_list_size, &auto_running_list_size);

  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buffer, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  sb_printf (&sb,
      "binlog_original_size\t%lld\n"
      "binlog_loaded_bytes\t%lld\n"
      "binlog_load_time\t%.6fs\n"
      "current_binlog_size\t%lld\n"
      "binlog_uncommitted_bytes\t%d\n"
      "binlog_path\t%s\n"
      "binlog_first_timestamp\t%d\n"
      "binlog_read_timestamp\t%d\n"
      "binlog_last_timestamp\t%d\n"
      "aux_binlog_path\t%s\n"
      "aux_log_read_start\t%lld\n"
      "aux_log_readto_pos\t%lld\n"
      "index_size\t%lld\n"
      "index_path\t%s\n"
      "index_load_time\t%.6lfs\n"
      "main_volume_id\t%llu\n"
      "aux_volume_id\t%llu\n"
      "instance_mask\t%d\n"
      "first_transaction_id\t%d\n"
      "transactions\t%d\n"
      "tot_memory_transactions\t%d\n"
      "child_running_list_size\t%d\n"
      "auto_running_list_size\t%d\n"
      "tot_ignored\t%d\n"
      "tot_interrupted\t%d\n"
      "tot_cancelled\t%d\n"
      "tot_terminated\t%d\n"
      "tot_failed\t%d\n"
      "tot_decryption_failed\t%d\n"
      "tot_io_failed\t%d\n"
      "version\t%s\n",
    log_readto_pos,
    log_readto_pos - jump_log_pos,
    binlog_load_time,
    log_pos,
    log_uncommitted,
    binlogname ? (strlen(binlogname) < 250 ? binlogname : "(too long)") : "(none)",
    log_first_ts,
    log_read_until,
    log_last_ts,
    strlen (aux_binlogname) < 250 ? aux_binlogname : "(too long)",
    aux_log_read_start,
    aux_log_readto_pos,
    engine_snapshot_size,
    engine_snapshot_name,
    index_load_time,
    main_volume_id,
    aux_volume_id,
    instance_mask,
    first_transaction_id,
    transactions,
    tot_memory_transactions,
    child_running_list_size, auto_running_list_size,
    tot_ignored, tot_interrupted, tot_cancelled, tot_terminated, tot_failed, tot_decryption_failed, tot_io_failed,
    FullVersionStr
  );
  return sb.pos;
}
