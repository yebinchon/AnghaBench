#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* replica_prefix; } ;
struct TYPE_8__ {TYPE_1__* info; } ;
struct TYPE_7__ {char* filename; int /*<<< orphan*/  file_size; } ;

/* Variables and functions */
 TYPE_2__* Binlog ; 
 int MAX_AD_ID ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__* Views ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 char* binlogname ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int copy_mod ; 
 int copy_rem ; 
 int disable_crc32 ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int,char**,char*) ; 
 int immediate_exit ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int jump_log_pos ; 
 int keep_log_limit_pos ; 
 int log_limit_pos ; 
 int log_readto_pos ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (char*,int,int) ; 
 TYPE_2__* FUNC16 (TYPE_3__*,int) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* progname ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 int skip_rotate ; 
 int /*<<< orphan*/  split_mod ; 
 int split_quotient ; 
 int FUNC19 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int targ_existed ; 
 int targ_fd ; 
 char* targ_fname ; 
 scalar_t__ targ_orig_size ; 
 int /*<<< orphan*/  FUNC20 () ; 
 char* username ; 
 scalar_t__ verbosity ; 

int FUNC21 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC12 (argc, argv, "fhvu:m:s:t:q:")) != -1) {
    switch (i) {
    case 'v':
      verbosity += 1;
      break;
    case 'f':
      // vkprintf(2, "setting skip_rotate\n");
      skip_rotate = 1;
      break;
    case 'h':
      FUNC20();
      return 2;
    case 'u':
      username = optarg;
      break;
    case 'q':
      split_quotient = FUNC0 (optarg);
      break;
    case 'm':
      if (FUNC19 (optarg, "%d,%d", &copy_rem, &copy_mod) != 2 || copy_rem < 0 || copy_rem >= copy_mod) {
	FUNC20();
	return 2;
      }
      break;
    case 's':
      jump_log_pos = FUNC1 (optarg);
      break;
    case 't':
      keep_log_limit_pos = log_limit_pos = FUNC1 (optarg);
      break;
    }
  }

  if (optind >= argc || optind + 2 < argc || !copy_mod) {
    FUNC20 ();
    return 2;
  }

  if (split_quotient > 0 && copy_mod % split_quotient != 0) {
    FUNC20 ();
    return 2;
  }

  if (log_limit_pos >= 0) {
    if (jump_log_pos > log_limit_pos) {
      FUNC11 (stderr, "fatal: log start position %d after stop position %d\n", jump_log_pos, log_limit_pos);
      return 2;
    }
  }

  if (username && FUNC2 (username) < 0) {
    FUNC11 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (FUNC6 (argv[optind], binlogname) < 0) {
    FUNC11 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC7 (1);
  }

  Binlog = FUNC16 (engine_replica, 0);
  if (!Binlog) {
    FUNC11 (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    FUNC7 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC11 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }

  FUNC3 ();

  FUNC13 (0, 0, 0);

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC15 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC11 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = FUNC14 (targ_fd, 0, SEEK_END);
    targ_existed = (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  if (jump_log_pos > 0) {

    log_limit_pos = 256;
    immediate_exit = 1;
    disable_crc32 = 3;

    i = FUNC18 (0, 1);

    if (!split_mod) {
      FUNC11 (stderr, "fatal: cannot parse first LEV_START entry");
      FUNC7 (1);
    }

    log_limit_pos = keep_log_limit_pos;
    immediate_exit = 0;

    FUNC3 ();

    FUNC5 (Binlog, 1);
    Binlog = 0;

    Binlog = FUNC16 (engine_replica, jump_log_pos);
    if (!Binlog) {
      FUNC11 (stderr, "fatal: cannot find binlog for %s, log position %d\n", engine_replica->replica_prefix, jump_log_pos);
      FUNC7 (1);
    }

    binlogname = Binlog->info->filename;

    if (verbosity) {
      FUNC11 (stderr, "replaying binlog file %s (size %d) from log position %d\n", binlogname, Binlog->info->file_size, jump_log_pos);
    }
    
    FUNC13 (jump_log_pos, 0, 0);
  }

  disable_crc32 = 3;

  i = FUNC18 (0, 1);

  if (i < 0) {
    FUNC11 (stderr, "fatal: error reading binlog\n");
    FUNC7 (1);
  }

  if (log_limit_pos >= 0 && log_readto_pos != log_limit_pos) {
    FUNC11 (stderr, "fatal: binlog read up to position %d instead of %d\n", log_readto_pos, log_limit_pos);
    FUNC7 (1);
  }

  for (i = 0; i < MAX_AD_ID; i++) {
    if (Views[i]) {
      FUNC10 (i);
    }
  }

  FUNC9 ();

  if (targ_fd != 1) {
    if (FUNC8 (targ_fd) < 0) {
      FUNC11 (stderr, "error syncing %s: %m", targ_fname);
      FUNC7 (1);
    }
    FUNC4 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC17 ();
  }

  return 0;
}