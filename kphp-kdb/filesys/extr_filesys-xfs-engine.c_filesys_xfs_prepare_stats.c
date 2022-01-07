
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
 int SB_BINLOG ;
 int SB_INDEX ;
 int STATS_BUFF_SIZE ;
 int compression_level ;
 int last_closed_transaction_id ;
 int last_closed_transaction_time ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int start_transaction_id ;
 int stats_buffer ;
 int transaction_id ;
 int volume_id ;
 int work_dir ;

int filesys_xfs_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buffer, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  SB_BINLOG;
  SB_INDEX;

  sb_printf (&sb,
      "volume_id\t%lld\n"
      "work_dir\t%s\n"
      "snapshot_compression_level\t%d\n"
      "start_transaction_id\t%d\n"
      "transaction_id\t%d\n"
      "last_closed_transaction_id\t%d\n"
      "last_closed_transaction_time\t%d\n"
      "version\t%s\n",
    volume_id,
    work_dir,
    compression_level,
    start_transaction_id,
    transaction_id,
    last_closed_transaction_id,
    last_closed_transaction_time,
    FullVersionStr
  );
  return sb.pos;
}
