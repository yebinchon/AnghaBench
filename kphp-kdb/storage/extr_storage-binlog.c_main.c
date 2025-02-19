
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* Binlog; } ;
typedef TYPE_2__ volume_t ;
typedef int V ;
struct TYPE_12__ {int replica_prefix; } ;
struct TYPE_11__ {TYPE_1__* info; } ;
struct TYPE_9__ {char* filename; int file_size; } ;


 TYPE_3__* Binlog ;
 int binlog_load_time ;
 char* binlogname ;
 int dump_log_pos ;
 int dump_storage_replay_log (TYPE_2__*,int ) ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_4__* engine_replica ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int jump_log_pos ;
 int kprintf (char*,char*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 int mytime () ;
 TYPE_3__* open_binlog (TYPE_4__*,int ) ;
 int optind ;
 int out ;
 int secret_in_base64url ;
 int stdout ;
 int usage () ;
 int verbosity ;
 int vkprintf (int,char*,...) ;

int main (int argc, char *argv[]) {
  int i;
  out = stdout;
  while ((i = getopt (argc, argv, "tphuv")) != -1) {
    switch (i) {
    case 'p':
      dump_log_pos = 1;
      break;
    case 'u':
      secret_in_base64url = 1;
      break;
    case 'v':
      verbosity++;
      break;
    case 'h':
      usage();
      return 2;
    }
  }

  if (optind >= argc) {
    usage();
    return 2;
  }

  volume_t V;
  memset (&V, 0, sizeof (V));

  if (engine_preload_filelist ( argv[optind], binlogname) < 0) {
    kprintf ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }

  vkprintf (3, "engine_preload_filelist done\n");
  Binlog = V.Binlog = open_binlog (engine_replica, jump_log_pos);
  if (!V.Binlog) {
    kprintf ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    exit (1);
  }

  binlogname = V.Binlog->info->filename;

  vkprintf (1, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
  binlog_load_time = -mytime();

  dump_storage_replay_log (&V, 0);

  vkprintf (1, "replay log events finished\n");

  binlog_load_time += mytime();

  return 0;
}
