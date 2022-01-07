
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int replica_prefix; } ;
struct TYPE_13__ {TYPE_2__* info; } ;
struct TYPE_12__ {TYPE_1__* info; } ;
struct TYPE_11__ {char* filename; int file_size; } ;
struct TYPE_10__ {char* filename; scalar_t__ file_size; } ;


 void* BACKLOG ;
 TYPE_4__* Binlog ;
 int CLOCK_MONOTONIC ;
 scalar_t__ MAX_CONNECTIONS ;
 scalar_t__ PRIVILEGED_TCP_PORTS ;
 TYPE_3__* Snapshot ;
 int aes_load_pwd_file (int ) ;
 int assert (int) ;
 void* atoi (char*) ;
 int atoll (char*) ;
 void* backlog ;
 int binlog_crc32_verbosity_level ;
 int binlog_disabled ;
 int binlog_load_time ;
 scalar_t__ binlog_loaded_size ;
 char* binlogname ;
 scalar_t__ change_user (char*) ;
 int clear_log () ;
 int clear_read_log () ;
 int clear_write_log () ;
 int daemonize ;
 scalar_t__ dyn_cur ;
 scalar_t__ dyn_first ;
 scalar_t__ dyn_last ;
 long long dynamic_data_buffer_size ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_5__* engine_replica ;
 char* engine_snapshot_name ;
 int engine_snapshot_replica ;
 scalar_t__ engine_snapshot_size ;
 int exit (int) ;
 int fprintf (int ,char*,int,char*) ;
 int get_utime (int ) ;
 int getopt (int,char**,char*) ;
 int index_load_time ;
 scalar_t__ index_mode ;
 int init_dyn_data () ;
 int init_log_data (scalar_t__,int ,int ) ;
 int jump_log_crc32 ;
 scalar_t__ jump_log_pos ;
 int jump_log_ts ;
 int kprintf (char*,scalar_t__,...) ;
 int load_index (TYPE_3__*) ;
 int log_readto_pos ;
 scalar_t__ log_ts_interval ;
 char* logname ;
 int master_host ;
 int master_port ;
 scalar_t__ master_slave_mode ;
 long long max_binlog_size ;
 scalar_t__ maxconn ;
 TYPE_4__* open_binlog (TYPE_5__*,scalar_t__) ;
 TYPE_3__* open_recent_snapshot (int ) ;
 char* optarg ;
 int optind ;
 scalar_t__ port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (scalar_t__) ;
 int replay_log (int ,int) ;
 scalar_t__ server_socket (scalar_t__,int ,void*,int ) ;
 int set_debug_handlers () ;
 int settings_addr ;
 scalar_t__ sfd ;
 int special_acc_id ;
 int split_max ;
 int split_min ;
 int split_mod ;
 int sscanf (char*,char*,...) ;
 int start_server () ;
 int start_time ;
 int stderr ;
 int time (int *) ;
 int usage () ;
 int use_aio ;
 char* username ;
 int verbosity ;
 int vkprintf (int,char*,...) ;
 int write_index (int ) ;

int main (int argc, char *argv[]) {
  int i, cutoff_time = 0;
  long long x;
  char c;

  set_debug_handlers ();

  progname = argv[0];
  max_binlog_size = (1LL << 62);

  while ((i = getopt (argc, argv, "a:b:c:dhi:l:p:rt:u:vB:H:MS:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'r':
      binlog_disabled = 1;
      break;
    case 'h':
      usage ();
      return 2;
    case 'b':
      backlog = atoi (optarg);
      if (backlog <= 0) {
 backlog = BACKLOG;
      }
      break;
    case 'c':
      maxconn = atoi (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
 maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'p':
      port = atoi (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'i':
      special_acc_id = atoll (optarg);
      break;
    case 'a':
      binlogname = optarg;
      break;
    case 'M':
      assert (!master_slave_mode);
      master_slave_mode = 1;
      break;
    case 'S':
      assert (!master_slave_mode);
      master_slave_mode = -1;
      i = -1;
      assert (sscanf (optarg, "%d,%d,%127[^:]:%d%n", &split_min, &split_mod, master_host, &master_port, &i) >= 4);
      assert (i >= 0 && !optarg[i]);
      assert (split_min >= 0 && split_min < split_mod && split_mod <= 10000);
      split_max = split_min + 1;
      assert (master_port > 0 && master_port < 65535);
      break;
    case 'l':
      logname = optarg;
      break;
    case 't':
      cutoff_time = atoi (optarg);
      break;
    case 'B': case 'H':
      c = 0;
      assert (sscanf (optarg, "%lld%c", &x, &c) >= 1);
      switch (c | 0x20) {
      case 'k': x <<= 10; break;
      case 'm': x <<= 20; break;
      case 'g': x <<= 30; break;
      case 't': x <<= 40; break;
      default: assert (c == 0x20);
      }
      if (i == 'B' && x >= 1024 && x < (1LL << 60)) {
        max_binlog_size = x;
      } else if (i == 'H' && x >= (1LL << 20) && x <= (sizeof(long) == 4 ? (3LL << 30) : (200LL << 30))) {
 dynamic_data_buffer_size = x;
      }
      break;
    case 'd':
      daemonize ^= 1;
      break;
    }
  }
  assert (!master_slave_mode || max_binlog_size == (1LL << 62));
  if (argc != optind + 1 && argc != optind + 2) {
    usage ();
    return 2;
  }

  if (master_slave_mode < 0) {
    vkprintf (1, "slave mode enabled: slice %d out of %d, master is at %s port %d\n", split_min, split_mod, master_host, master_port);
  }

  if (raise_file_rlimit (maxconn + 16) < 0) {
    kprintf ("fatal: cannot raise open file limit to %d\n", maxconn+16);
    exit (1);
  }

  if (port < PRIVILEGED_TCP_PORTS && !index_mode) {
    sfd = server_socket (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      kprintf ("cannot open server socket at port %d: %m\n", port);
      exit (1);
    }
  }

  aes_load_pwd_file (0);

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  init_dyn_data ();
  log_ts_interval = 0;

  if (engine_preload_filelist (argv[optind], binlogname) < 0) {
    kprintf ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }


  Snapshot = open_recent_snapshot (engine_snapshot_replica);

  if (Snapshot) {
    engine_snapshot_name = Snapshot->info->filename;
    engine_snapshot_size = Snapshot->info->file_size;

    vkprintf (1, "load index file %s (size %lld)\n", engine_snapshot_name, engine_snapshot_size);
    index_load_time = -get_utime (CLOCK_MONOTONIC);

    i = load_index (Snapshot);

    index_load_time += get_utime (CLOCK_MONOTONIC);

    if (i < 0) {
      fprintf (stderr, "fatal: error %d while loading index file %s\n", i, engine_snapshot_name);
      exit(1);
    }

    vkprintf (1, "load index: done, jump_log_pos=%lld, alloc_mem=%ld out of %ld, time %.06lfs\n",
       jump_log_pos, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), index_load_time);


  } else {
    engine_snapshot_name = ((void*)0);
    engine_snapshot_size = 0;
  }


  vkprintf (2, "starting reading binlog\n");

  Binlog = open_binlog (engine_replica, jump_log_pos);
  if (!Binlog) {
    kprintf ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    exit (1);
  }

  binlogname = Binlog->info->filename;

  vkprintf (1, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
  binlog_load_time = -get_utime (CLOCK_MONOTONIC);

  clear_log ();

  init_log_data (jump_log_pos, jump_log_ts, jump_log_crc32);
  use_aio = -use_aio;

  vkprintf (1, "replay log events started\n");
  i = replay_log (0, 1);

  use_aio = -use_aio;
  vkprintf (1, "replay log events finished\n");

  binlog_load_time += get_utime (CLOCK_MONOTONIC);
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  if (!binlog_disabled) {
    clear_read_log();
  }

  clear_write_log ();
  start_time = time (((void*)0));

  if (index_mode) {
    return write_index (0);
  }

  binlog_crc32_verbosity_level = 6;
  start_server();

  return 0;
}
