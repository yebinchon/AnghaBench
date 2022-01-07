
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* replica_prefix; } ;
struct TYPE_8__ {TYPE_1__* info; } ;
struct TYPE_7__ {char* filename; int file_size; } ;


 TYPE_2__* Binlog ;
 int MAX_AD_ID ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int SEEK_END ;
 scalar_t__* Views ;
 int atoi (char*) ;
 int atoll (char*) ;
 char* binlogname ;
 scalar_t__ change_user (char*) ;
 int clear_log () ;
 int close (int) ;
 int close_binlog (TYPE_2__*,int) ;
 int copy_mod ;
 int copy_rem ;
 int disable_crc32 ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_3__* engine_replica ;
 int exit (int) ;
 scalar_t__ fdatasync (int) ;
 int flush_out () ;
 int flush_views (int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int immediate_exit ;
 int init_log_data (int,int ,int ) ;
 int jump_log_pos ;
 int keep_log_limit_pos ;
 int log_limit_pos ;
 int log_readto_pos ;
 scalar_t__ lseek (int,int ,int ) ;
 int open (char*,int,int) ;
 TYPE_2__* open_binlog (TYPE_3__*,int) ;
 char* optarg ;
 int optind ;
 int output_stats () ;
 char* progname ;
 int replay_log (int ,int) ;
 int skip_rotate ;
 int split_mod ;
 int split_quotient ;
 int sscanf (char*,char*,int*,int*) ;
 int stderr ;
 int targ_existed ;
 int targ_fd ;
 char* targ_fname ;
 scalar_t__ targ_orig_size ;
 int usage () ;
 char* username ;
 scalar_t__ verbosity ;

int main (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = getopt (argc, argv, "fhvu:m:s:t:q:")) != -1) {
    switch (i) {
    case 'v':
      verbosity += 1;
      break;
    case 'f':

      skip_rotate = 1;
      break;
    case 'h':
      usage();
      return 2;
    case 'u':
      username = optarg;
      break;
    case 'q':
      split_quotient = atoi (optarg);
      break;
    case 'm':
      if (sscanf (optarg, "%d,%d", &copy_rem, &copy_mod) != 2 || copy_rem < 0 || copy_rem >= copy_mod) {
 usage();
 return 2;
      }
      break;
    case 's':
      jump_log_pos = atoll (optarg);
      break;
    case 't':
      keep_log_limit_pos = log_limit_pos = atoll (optarg);
      break;
    }
  }

  if (optind >= argc || optind + 2 < argc || !copy_mod) {
    usage ();
    return 2;
  }

  if (split_quotient > 0 && copy_mod % split_quotient != 0) {
    usage ();
    return 2;
  }

  if (log_limit_pos >= 0) {
    if (jump_log_pos > log_limit_pos) {
      fprintf (stderr, "fatal: log start position %lld after stop position %lld\n", jump_log_pos, log_limit_pos);
      return 2;
    }
  }

  if (username && change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (engine_preload_filelist (argv[optind], binlogname) < 0) {
    fprintf (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }

  Binlog = open_binlog (engine_replica, 0);
  if (!Binlog) {
    fprintf (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    exit (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    fprintf (stderr, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
  }

  clear_log ();

  init_log_data (0, 0, 0);

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = open (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      fprintf (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = lseek (targ_fd, 0, SEEK_END);
    targ_existed = (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  if (jump_log_pos > 0) {

    log_limit_pos = 256;
    immediate_exit = 1;
    disable_crc32 = 3;

    i = replay_log (0, 1);

    if (!split_mod) {
      fprintf (stderr, "fatal: cannot parse first LEV_START entry");
      exit (1);
    }

    log_limit_pos = keep_log_limit_pos;
    immediate_exit = 0;

    clear_log ();

    close_binlog (Binlog, 1);
    Binlog = 0;

    Binlog = open_binlog (engine_replica, jump_log_pos);
    if (!Binlog) {
      fprintf (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
      exit (1);
    }

    binlogname = Binlog->info->filename;

    if (verbosity) {
      fprintf (stderr, "replaying binlog file %s (size %lld) from log position %lld\n", binlogname, Binlog->info->file_size, jump_log_pos);
    }

    init_log_data (jump_log_pos, 0, 0);
  }

  disable_crc32 = 3;

  i = replay_log (0, 1);

  if (i < 0) {
    fprintf (stderr, "fatal: error reading binlog\n");
    exit (1);
  }

  if (log_limit_pos >= 0 && log_readto_pos != log_limit_pos) {
    fprintf (stderr, "fatal: binlog read up to position %lld instead of %lld\n", log_readto_pos, log_limit_pos);
    exit (1);
  }

  for (i = 0; i < MAX_AD_ID; i++) {
    if (Views[i]) {
      flush_views (i);
    }
  }

  flush_out ();

  if (targ_fd != 1) {
    if (fdatasync (targ_fd) < 0) {
      fprintf (stderr, "error syncing %s: %m", targ_fname);
      exit (1);
    }
    close (targ_fd);
  }

  if (verbosity > 0) {
    output_stats ();
  }

  return 0;
}
