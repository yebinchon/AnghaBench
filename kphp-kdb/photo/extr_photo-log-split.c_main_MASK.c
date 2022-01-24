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
struct TYPE_8__ {char* replica_prefix; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {char* filename; int /*<<< orphan*/  file_size; } ;

/* Variables and functions */
 TYPE_2__* Binlog ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ FUNC0 (char*) ; 
 char* binlogname ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  copy_mod ; 
 int /*<<< orphan*/  copy_rem ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ jump_log_pos ; 
 scalar_t__ log_limit_pos ; 
 scalar_t__ log_readto_pos ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int,int) ; 
 TYPE_2__* FUNC14 (TYPE_3__*,scalar_t__) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* progname ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int targ_existed ; 
 int targ_fd ; 
 char* targ_fname ; 
 scalar_t__ targ_orig_size ; 
 int /*<<< orphan*/  FUNC18 () ; 
 char* username ; 
 scalar_t__ verbosity ; 

int FUNC19 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC9 (argc, argv, "hvu:m:s:t:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
      break;
    case 'h':
      FUNC18();
      return 2;
    case 'u':
      username = optarg;
      break;
    case 'm':
      if (FUNC17 (optarg, "%d,%d", &copy_rem, &copy_mod) != 2 || copy_rem < 0 || copy_rem >= copy_mod) {
        FUNC18();
        return 2;
      }
      break;
    case 's':
      jump_log_pos = FUNC0 (optarg);
      break;
    case 't':
      log_limit_pos = FUNC0 (optarg);
      break;
    }
  }

  if (optind >= argc || optind + 2 < argc) {
    FUNC18();
    return 2;
  }

  if (log_limit_pos >= 0) {
    if (jump_log_pos > log_limit_pos) {
      FUNC8 (stderr, "fatal: log start position %ld after stop position %ld\n", jump_log_pos, log_limit_pos);
      return 2;
    }
  }

  if (username && FUNC1 (username) < 0) {
    FUNC8 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (FUNC4 (argv[optind], binlogname) < 0) {
    FUNC8 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC5 (1);
  }

  Binlog = FUNC14 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC8 (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    FUNC5 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC8 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }

  FUNC2();

  FUNC10 (jump_log_pos, 0, 0);

  if (jump_log_pos > 0) {
    FUNC11 (0);
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC13 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC8 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = FUNC12 (targ_fd, 0, SEEK_END);
    targ_existed = (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  i = FUNC16 (0, 1);

  if (i < 0) {
    FUNC8 (stderr, "fatal: error reading binlog\n");
    FUNC5 (1);
  }

  if (log_limit_pos >= 0 && log_readto_pos != log_limit_pos) {
    FUNC8 (stderr, "fatal: binlog read up to position %ld instead of %ld\n", log_readto_pos, log_limit_pos);
    FUNC5 (1);
  }

  FUNC7 ();

  if (targ_fd != 1) {
    if (FUNC6 (targ_fd) < 0) {
      FUNC8 (stderr, "error syncing %s: %m", targ_fname);
      FUNC5 (1);
    }
    FUNC3 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC15 ();
  }

  return 0;
}