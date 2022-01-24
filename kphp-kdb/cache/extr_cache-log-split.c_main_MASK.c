#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  replica_prefix; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {char* filename; int /*<<< orphan*/  file_size; } ;

/* Variables and functions */
 TYPE_2__* Binlog ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 void* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* binlogname ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  copy_mod ; 
 int /*<<< orphan*/  copy_rem ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ log_limit_pos ; 
 scalar_t__ log_readto_pos ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (char*,int,int) ; 
 TYPE_2__* FUNC16 (TYPE_3__*,scalar_t__) ; 
 char* optarg ; 
 int optind ; 
 char* output_cache_id ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* progname ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 int FUNC19 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* start_timestamp ; 
 int /*<<< orphan*/  stderr ; 
 int targ_existed ; 
 int targ_fd ; 
 char* targ_fname ; 
 scalar_t__ targ_orig_size ; 
 void* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC22 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_local_copies_logevents ; 

int FUNC23 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC10 (argc, argv, "C:LS:hm:s:t:u:v")) != -1) {
    switch (i) {
    case 'C':
      output_cache_id = FUNC0 (optarg);
      break;
    case 'L':
      write_local_copies_logevents = 0;
      break;
    case 'S':
      start_timestamp = FUNC0 (optarg);
      if (start_timestamp > FUNC20 (NULL)) {
        FUNC13 ("start_timestamps could be after current time\n");
        FUNC6 (1);
      }
      break;
    case 'h':
      FUNC21 ();
      return 2;
    case 'm':
      if (FUNC19 (optarg, "%d,%d", &copy_rem, &copy_mod) != 2 || copy_rem < 0 || copy_rem >= copy_mod) {
	      FUNC21();
      }
      break;
    case 's':
      jump_log_pos = FUNC1 (optarg);
      break;
    case 't':
      log_limit_pos = FUNC1 (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity = 1;
      break;
    default:
      FUNC9 (stderr, "Unimplemented option -%c\n", (char) i);
      FUNC6 (1);
    }
  }

  if (optind >= argc || optind + 2 < argc) {
    FUNC21 ();
  }

  if (log_limit_pos >= 0) {
    if (jump_log_pos > log_limit_pos) {
      FUNC13 ("fatal: log start position %lld after stop position %lld\n", jump_log_pos, log_limit_pos);
      return 2;
    }
  }

  if (FUNC2 (username) < 0) {
    FUNC13 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (FUNC5 (argv[optind], binlogname) < 0) {
    FUNC13 ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC6 (1);
  }

  Binlog = FUNC16 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC13 ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    FUNC6 (1);
  }

  binlogname = Binlog->info->filename;

  FUNC22 (1, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);

  FUNC3 ();

  FUNC12 (jump_log_pos, 0, 0);

  if (jump_log_pos > 0) {
    FUNC11 (0);
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC15 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC13 ("cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = FUNC14 (targ_fd, 0, SEEK_END);
    targ_existed = (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  if (output_cache_id > 0 && targ_existed) {
    FUNC13 ("You couldn't specify '-C %d' and existed target together.\n", output_cache_id);
    FUNC6 (1);
  }

  i = FUNC18 (0, 1);

  if (i < 0) {
    FUNC13 ("fatal: error reading binlog\n");
    FUNC6 (1);
  }

  if (log_limit_pos >= 0 && log_readto_pos != log_limit_pos) {
    FUNC13 ("fatal: binlog read up to position %lld instead of %lld\n", log_readto_pos, log_limit_pos);
    FUNC6 (1);
  }

  FUNC8 ();

  if (targ_fd != 1) {
    if (FUNC7 (targ_fd) < 0) {
      FUNC13 ("error syncing %s: %m", targ_fname);
      FUNC6 (1);
    }
    FUNC4 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC17 ();
  }

  return 0;
}