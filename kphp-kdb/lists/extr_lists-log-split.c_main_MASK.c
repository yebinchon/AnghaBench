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
struct lev_crc32 {int pos; int /*<<< orphan*/  crc32; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {char* replica_prefix; } ;
struct TYPE_8__ {TYPE_1__* info; } ;
struct TYPE_7__ {char* filename; int /*<<< orphan*/  file_size; } ;

/* Variables and functions */
 TYPE_2__* Binlog ; 
 int /*<<< orphan*/  LEV_CRC32 ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SPLIT_FIRSTINT ; 
 int /*<<< orphan*/  SPLIT_LIKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 char* binlogname ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  copy_mod ; 
 int /*<<< orphan*/  copy_rem ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  fan_members_want_write ; 
 scalar_t__ FUNC8 (int) ; 
 int filter_member_fan ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int,char**,char*) ; 
 int immediate_exit ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int jump_log_pos ; 
 int keep_log_limit_pos ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  last_timestamp ; 
 int /*<<< orphan*/  list_id_ints ; 
 int log_limit_pos ; 
 int log_readto_pos ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  member_fans_want_write ; 
 int FUNC15 (char*,int,int) ; 
 TYPE_2__* FUNC16 (TYPE_3__*,int) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* progname ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 int skip_rotate ; 
 int /*<<< orphan*/  split_mode ; 
 int FUNC19 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 char* FUNC21 (char*,char) ; 
 int targ_existed ; 
 int targ_fd ; 
 char* targ_fname ; 
 scalar_t__ targ_orig_size ; 
 int /*<<< orphan*/  FUNC22 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC23 (int,char*) ; 
 int /*<<< orphan*/  want_write ; 
 int wr_bytes ; 
 int /*<<< orphan*/  wr_crc32_complement ; 
 int /*<<< orphan*/  wr_rec ; 
 struct lev_crc32* FUNC24 (int) ; 

int FUNC25 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC11 (argc, argv, "fhvu:m:s:t:M:F")) != -1) {
    switch (i) {
    case 'F':
      filter_member_fan = 1;
      break;
    case 'v':
      verbosity += 1;
      break;
    case 'f':
      // vkprintf(2, "setting skip_rotate\n");
      skip_rotate = 1;
      break;
    case 'h':
      FUNC22 ();
      return 2;
    case 'u':
      username = optarg;
      break;
    case 'm':
      if (FUNC19 (optarg, "%d,%d", &copy_rem, &copy_mod) != 2 || copy_rem < 0 || copy_rem >= copy_mod) {
	FUNC22();
	return 2;
      }
      break;
    case 's':
      jump_log_pos = FUNC1 (optarg);
      break;
    case 't':
      keep_log_limit_pos = log_limit_pos = FUNC1 (optarg);
      break;
    case 'M':
      if (!FUNC20(optarg, "firstint", 9)) {
        split_mode = SPLIT_FIRSTINT;
      } else if (!FUNC20(optarg, "liked", 6)) {
        split_mode = SPLIT_LIKED;
      } else {
        FUNC22();
        return 2;
      }
      break;
    default:
      FUNC0 (0);
      return 2;
    }
  }

  if (optind >= argc || optind + 2 < argc) {
    FUNC22();
    return 2;
  }

  if (filter_member_fan) {
    FUNC23 (1, "fix member_fans, fan_members mode\n");
    char *p = FUNC21 (argv[optind], '/');
    p = (p == NULL) ? argv[optind] : (p + 1);
    if (!FUNC20 (p, "member_fans", 11)) {
      want_write = member_fans_want_write;
    } else if (!FUNC20 (p, "fan_members", 11)) {
      want_write = fan_members_want_write;
    } else {
      FUNC13 ("binlogname should starts from member_fans of fan_members when command line switch -F used.\n");
      FUNC7 (1);
    }
  }

  if (log_limit_pos >= 0) {
    if (jump_log_pos > log_limit_pos) {
      FUNC10 (stderr, "fatal: log start position %d after stop position %d\n", jump_log_pos, log_limit_pos);
      return 2;
    }
  }

  if (username && FUNC2 (username) < 0) {
    FUNC10 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (FUNC6 (argv[optind], binlogname) < 0) {
    FUNC10 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC7 (1);
  }

  Binlog = FUNC16 (engine_replica, 0);
  if (!Binlog) {
    FUNC10 (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    FUNC7 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC10 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }

  FUNC3();

  FUNC12 (0, 0, 0);

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC15 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC10 (stderr, "cannot create %s: %m\n", targ_fname);
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

    i = FUNC18 (0, 1);

    if (!list_id_ints) {
      FUNC10 (stderr, "fatal: cannot parse first LEV_START entry");
      FUNC7 (1);
    }

    log_limit_pos = keep_log_limit_pos;
    immediate_exit = 0;

    FUNC3 ();

    FUNC5 (Binlog, 1);
    Binlog = 0;

    Binlog = FUNC16 (engine_replica, jump_log_pos);
    if (!Binlog) {
      FUNC10 (stderr, "fatal: cannot find binlog for %s, log position %d\n", engine_replica->replica_prefix, jump_log_pos);
      FUNC7 (1);
    }

    binlogname = Binlog->info->filename;

    if (verbosity) {
      FUNC10 (stderr, "replaying binlog file %s (size %d) from log position %d\n", binlogname, Binlog->info->file_size, jump_log_pos);
    }

    FUNC12 (jump_log_pos, 0, 0);
  }

  i = FUNC18 (0, 1);

  if (i < 0) {
    FUNC10 (stderr, "fatal: error reading binlog\n");
    FUNC7 (1);
  }

  if (log_limit_pos >= 0 && log_readto_pos != log_limit_pos) {
    FUNC10 (stderr, "fatal: binlog read up to position %d instead of %d\n", log_readto_pos, log_limit_pos);
    FUNC7 (1);
  }

  if (!targ_orig_size && !jump_log_pos) {
    FUNC23 (1, "Writing CRC32 to the end of target binlog.\n");
    struct lev_crc32 *C = FUNC24 (20);
    C->type = LEV_CRC32;
    C->timestamp = last_timestamp;
    C->pos = wr_bytes;
    C->crc32 = ~wr_crc32_complement;
    wr_bytes += 20;
    wr_rec++;
  }

  FUNC9 ();

  if (targ_fd != 1) {
    if (FUNC8 (targ_fd) < 0) {
      FUNC10 (stderr, "error syncing %s: %m", targ_fname);
      FUNC7 (1);
    }
    FUNC4 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC17 ();
  }

  return 0;
}