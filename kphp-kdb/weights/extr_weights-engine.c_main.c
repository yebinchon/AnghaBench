
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int replica_prefix; } ;
struct TYPE_12__ {TYPE_2__* info; } ;
struct TYPE_11__ {TYPE_1__* info; } ;
struct TYPE_10__ {char* filename; int file_size; } ;
struct TYPE_9__ {scalar_t__ file_size; int filename; } ;


 TYPE_4__* Binlog ;
 TYPE_3__* Snapshot ;
 int aes_pwd_file ;
 int binlog_disabled ;
 int binlog_load_time ;
 char* binlogname ;
 int clear_log () ;
 int clear_read_log () ;
 int clear_write_log () ;
 int engine_init (int *,int ,scalar_t__) ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_5__* engine_replica ;
 int * engine_snapshot_name ;
 int engine_snapshot_replica ;
 scalar_t__ engine_snapshot_size ;
 int exit (int) ;
 int f_parse_option ;
 int index_load_time ;
 scalar_t__ index_mode ;
 int init_log_data (int ,int ,int ) ;
 int jump_log_crc32 ;
 int jump_log_pos ;
 int jump_log_ts ;
 int kprintf (char*,...) ;
 int load_index () ;
 int mytime () ;
 int no_argument ;
 TYPE_4__* open_binlog (TYPE_5__*,int ) ;
 TYPE_3__* open_recent_snapshot (int ) ;
 int optind ;
 int parse_engine_options_long (int,char**,int ) ;
 int parse_option (char*,int ,int ,unsigned char,char*) ;
 char* progname ;
 int remove_parse_option (int) ;
 int replay_log (int ,int) ;
 int save_index (int ) ;
 int set_debug_handlers () ;
 int start_server () ;
 int start_time ;
 int * strdup (int ) ;
 int time (int ) ;
 int usage () ;
 int vkprintf (int,char*,...) ;
 int weights_engine ;

int main (int argc, char *argv[]) {
  int i;
  set_debug_handlers ();
  parse_option ("index", no_argument, 0, 'i', "reindex");
  remove_parse_option (201);
  parse_option ("udp", no_argument, 0, 'U', "enables udp message support");
  parse_engine_options_long (argc, argv, f_parse_option);

  progname = argv[0];

  if (argc != optind + 1) {
    usage();
    return 2;
  }

  engine_init (&weights_engine, aes_pwd_file, index_mode);

  if (engine_preload_filelist (argv[optind], binlogname) < 0) {
    kprintf ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }

  vkprintf (3, "engine_preload_filelist done\n");


  Snapshot = open_recent_snapshot (engine_snapshot_replica);

  if (Snapshot) {
    engine_snapshot_name = strdup (Snapshot->info->filename);
    engine_snapshot_size = Snapshot->info->file_size;
    vkprintf (1, "load index file %s (size %lld)\n", engine_snapshot_name, engine_snapshot_size);

    index_load_time = -mytime();

    i = load_index ();

    if (i < 0) {
      kprintf ("load_index returned fail code %d.\n", i);
      exit (1);
    }
    index_load_time += mytime();
  } else {
    engine_snapshot_name = ((void*)0);
    engine_snapshot_size = 0;
    index_load_time = 0;
  }


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

  if (!binlog_disabled) {
    clear_read_log();
  }

  if (i < 0) {
    kprintf ("fatal: error reading binlog\n");
    exit (1);
  }

  clear_write_log ();
  start_time = time (0);

  if (index_mode) {
    save_index (0);
  } else {
    start_server ();
  }

  return 0;
}
