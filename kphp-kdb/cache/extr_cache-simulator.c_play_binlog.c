
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int replica_prefix; } ;
struct TYPE_8__ {TYPE_1__* info; } ;
struct TYPE_7__ {int file_size; int filename; } ;


 TYPE_2__* Binlog ;
 int binlog_load_time ;
 scalar_t__ binlog_loaded_size ;
 int binlogname ;
 int clear_log () ;
 int clear_write_log () ;
 int close_binlog (TYPE_2__*,int) ;
 int ending (int) ;
 TYPE_3__* engine_replica ;
 int exit (int) ;
 int init_log_data (scalar_t__,int ,int ) ;
 int jump_log_crc32 ;
 scalar_t__ jump_log_pos ;
 int jump_log_ts ;
 int kprintf (char*,int ,scalar_t__) ;
 int log_readto_pos ;
 int mytime () ;
 scalar_t__ now ;
 TYPE_2__* open_binlog (TYPE_3__*,scalar_t__) ;
 int replay_log (int ,int) ;
 int vkprintf (int,char*,...) ;

void play_binlog (const char *const desc) {
  static int replaying_step = 0;
  int i;
  replaying_step++;
  vkprintf (1, "Start %d%s replaying binlog step (%s)\n", replaying_step, ending (replaying_step), desc);
  now = 0;

  Binlog = open_binlog (engine_replica, jump_log_pos);
  if (!Binlog) {
    kprintf ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    exit (1);
  }

  binlogname = Binlog->info->filename;

  vkprintf (1, "replaying binlog file %s (size %lld) from position %lld\n", binlogname, Binlog->info->file_size, jump_log_pos);
  binlog_load_time = -mytime();

  clear_log ();

  init_log_data (jump_log_pos, jump_log_ts, jump_log_crc32);

  vkprintf (1, "replay log events started\n");
  i = replay_log (0, 1);
  vkprintf (1, "replay log events finished\n");

  binlog_load_time += mytime();
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  clear_write_log ();
  close_binlog (Binlog, 1);

}
