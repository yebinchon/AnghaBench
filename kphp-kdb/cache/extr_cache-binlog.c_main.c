
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int replica_prefix; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {char* filename; int file_size; } ;


 TYPE_2__* Binlog ;
 int binlog_load_time ;
 scalar_t__ binlog_loaded_size ;
 char* binlogname ;
 int clear_log () ;
 int dump_cache_replay_logevent ;
 int dump_log_pos ;
 int dump_timestamp ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_3__* engine_replica ;
 int exit (int) ;
 int filtered_uri_short_md5 ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int init_log_data (long long,int ,int ) ;
 int jump_log_crc32 ;
 int jump_log_ts ;
 int kprintf (char*,int ,long long) ;
 scalar_t__ log_readto_pos ;
 int mytime () ;
 TYPE_2__* open_binlog (TYPE_3__*,long long) ;
 int optarg ;
 int optind ;
 int out ;
 int replay_log (int ,int) ;
 int replay_logevent ;
 int stderr ;
 int stdout ;
 int usage () ;
 int verbosity ;
 int vkprintf (int,char*,...) ;

int main (int argc, char *argv[]) {
  int i;
  long long jump_log_pos = 0;
  out = stdout;
  replay_logevent = dump_cache_replay_logevent;
  while ((i = getopt (argc, argv, "tphv")) != -1) {
    switch (i) {
    case 'F':
      filtered_uri_short_md5 = optarg;
      break;
    case 'p':
      dump_log_pos = 1;
      break;
    case 't':
      dump_timestamp = 1;
      break;
    case 'v':
      verbosity++;
      break;
    case 'h':
      usage();
    }
  }

  if (optind >= argc) {
    usage();
  }

  if (engine_preload_filelist ( argv[optind], binlogname) < 0) {
    fprintf (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }

  Binlog = open_binlog (engine_replica, jump_log_pos);
  if (!Binlog) {
    kprintf ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    exit (1);
  }

  binlogname = Binlog->info->filename;

  vkprintf (1, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
  binlog_load_time = -mytime();
  clear_log();
  init_log_data (jump_log_pos, jump_log_ts, jump_log_crc32);
  vkprintf (1, "replay log events started\n");

  i = replay_log (0, 1);

  vkprintf (1, "replay log events finished\n");

  binlog_load_time += mytime();
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  return 0;

}
