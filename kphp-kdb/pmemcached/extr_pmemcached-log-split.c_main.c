
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* replica_prefix; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {char* filename; int file_size; } ;


 TYPE_2__* Binlog ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int SEEK_END ;




 scalar_t__ atoll (char*) ;
 char* binlogname ;
 scalar_t__ change_user (char*) ;
 int clear_log () ;
 int close (int) ;
 scalar_t__ copy_mod ;
 scalar_t__ copy_rem ;
 int dot_fits ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_3__* engine_replica ;
 int exit (int) ;
 scalar_t__ fdatasync (int) ;
 int firstint_fits ;
 int * fits ;
 int flush_out () ;
 int fprintf (int ,char*,...) ;
 int get_split_mode (char*) ;
 int getopt (int,char**,char*) ;
 int hash_key_fits ;
 int init_log_data (scalar_t__,int ,int ) ;
 int init_pmemcached_data (int ) ;
 scalar_t__ jump_log_pos ;
 scalar_t__ log_limit_pos ;
 scalar_t__ log_readto_pos ;
 scalar_t__ lseek (int,int ,int ) ;
 int open (char*,int,int) ;
 TYPE_2__* open_binlog (TYPE_3__*,scalar_t__) ;
 char* optarg ;
 int optind ;
 int output_stats () ;
 char* progname ;
 int replay_log (int ,int) ;
 int skip_rotate ;
 int split_mode ;
 int sscanf (char*,char*,scalar_t__*,scalar_t__*) ;
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
  while ((i = getopt (argc, argv, "hfvu:m:s:t:z:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
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
      log_limit_pos = atoll (optarg);
      break;
    case 'z':
      split_mode = get_split_mode(optarg);
      switch (split_mode) {
      case 128:
        fprintf (stderr, "fatal: unsupported split mode: %s\n", optarg);
        return 2;
      case 129:
        fits = &hash_key_fits;
        break;
      case 130:
        fits = &firstint_fits;
        break;
      case 131:
        fits = &dot_fits;
        break;
      }
      break;
    }
  }

  if (copy_mod < 0) {
    usage ();
    return 2;
  }


  if (optind >= argc || optind + 2 < argc) {
    usage();
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

  Binlog = open_binlog (engine_replica, jump_log_pos);
  if (!Binlog) {
    fprintf (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    exit (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    fprintf (stderr, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
  }

  clear_log();

  init_log_data (jump_log_pos, 0, 0);

  if (jump_log_pos > 0) {
    init_pmemcached_data (0);
  }

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

  i = replay_log (0, 1);

  if (i < 0) {
    fprintf (stderr, "fatal: error reading binlog\n");
    exit (1);
  }

  if (log_limit_pos >= 0 && log_readto_pos != log_limit_pos) {
    fprintf (stderr, "fatal: binlog read up to position %lld instead of %lld\n", log_readto_pos, log_limit_pos);
    exit (1);
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
