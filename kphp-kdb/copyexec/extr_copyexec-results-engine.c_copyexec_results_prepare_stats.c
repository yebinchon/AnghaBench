
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
 int alloc_tree_nodes ;
 int binlog_load_time ;
 int binlog_loaded_size ;
 char* binlogname ;
 int cmd_get ;
 int cmd_stats ;
 int compute_uncommitted_log_bytes () ;
 int dyn_update_stats () ;
 int free_tree_nodes ;
 int get_memory_usage (long long*,int) ;
 int hosts ;
 int log_first_ts ;
 int log_last_ts ;
 int log_pos ;
 int log_read_until ;
 int log_readto_pos ;
 int max_lru_size ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,int ,int ,int ,int,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stats_buff ;
 int strlen (char*) ;
 int tot_memory_transactions ;

int copyexec_results_prepare_stats (struct connection *c) {
  int log_uncommitted = compute_uncommitted_log_bytes();
  dyn_update_stats ();
  long long a[7];
  get_memory_usage (a, 7);

  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
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
    binlogname ? (strlen(binlogname) < 250 ? binlogname : "(too long)") : "(none)",
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
