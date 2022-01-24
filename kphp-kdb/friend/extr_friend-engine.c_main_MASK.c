#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* replica_prefix; } ;
struct TYPE_14__ {TYPE_2__* info; } ;
struct TYPE_13__ {TYPE_1__* info; } ;
struct TYPE_12__ {char* filename; int /*<<< orphan*/  file_size; } ;
struct TYPE_11__ {scalar_t__ file_size; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 TYPE_4__* Binlog ; 
 int /*<<< orphan*/  CD_ENGINE ; 
 int /*<<< orphan*/  CD_INDEXER ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ PRIVILEGED_TCP_PORTS ; 
 int /*<<< orphan*/  SIGRTMAX ; 
 TYPE_3__* Snapshot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aes_pwd_file ; 
 int /*<<< orphan*/  backlog ; 
 int binlog_disabled ; 
 int /*<<< orphan*/  binlog_load_time ; 
 int /*<<< orphan*/  binlog_loaded_size ; 
 char* binlogname ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 TYPE_5__* engine_replica ; 
 char* engine_snapshot_name ; 
 int /*<<< orphan*/  engine_snapshot_replica ; 
 scalar_t__ engine_snapshot_size ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_load_time ; 
 int index_mode ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  log_readto_pos ; 
 int maxconn ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  no_argument ; 
 TYPE_4__* FUNC19 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC21 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int*,char,char*) ; 
 scalar_t__ port ; 
 char* progname ; 
 scalar_t__ FUNC23 (int) ; 
 int FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  required_argument ; 
 scalar_t__ reverse_friends_mode ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigrtmax_handler ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (char*) ; 
 int /*<<< orphan*/  test_mode ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 scalar_t__ udp_enabled ; 
 int /*<<< orphan*/  FUNC33 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 scalar_t__ w_split_mod ; 

int FUNC34 (int argc, char *argv[]) {
  int i;

  FUNC28 (SIGRTMAX, sigrtmax_handler);
  FUNC27 ();

  FUNC22 ("test-mode", no_argument, 0, 'T', "test mode");
  FUNC22 ("ignore-delete-user", required_argument, 0, 'I', 0);
  FUNC22 ("dump-lists", required_argument, 0, 'W', "argument rem,mod. Dumps lists with specified rem mod mod");
  FUNC22 ("reverse", no_argument, 0, 'A', "reverse friends mode");
  FUNC22 ("index", no_argument, &index_mode, 'i', "index mode");
  FUNC22 (0, required_argument, 0, 'H', "heap size");

  progname = argv[0];
  FUNC21 (argc, argv, f_parse_option);
  if (argc != optind + 1 && argc != optind + 2) {
    FUNC33();
    return 2;
  }

  if (binlog_disabled > 1 || reverse_friends_mode) {
    binlog_disabled = 1;
  }

  if (FUNC31 (argv[0]) >= 5 && FUNC18 ( argv[0] + FUNC31 (argv[0]) - 5, "index" , 5) == 0) {
    index_mode = 1;
  }

  if (!w_split_mod && FUNC23(maxconn + 16) < 0 && !test_mode) {
    FUNC10 (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    FUNC9(1);
  }

  if (!w_split_mod && port < PRIVILEGED_TCP_PORTS) {
    sfd = FUNC26 (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      FUNC10(stderr, "cannot open server socket at port %ld: %m\n", port);
      FUNC9(1);
    }
  }

  FUNC0 (aes_pwd_file);

  if (w_split_mod) {
    binlog_disabled = 1;
  }

  if (FUNC1(username) < 0) {
    FUNC10 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC9(1);
  }

  FUNC14();
  if (udp_enabled) {
    FUNC16 (FUNC11 (), port);
  }

  if (FUNC8 (argv[optind], binlogname) < 0) {
    FUNC10 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC9 (1);
  }
  
  FUNC13 (0, index_mode ? CD_INDEXER : CD_ENGINE);
  FUNC6 (engine_replica->replica_prefix);

  Snapshot = FUNC20 (engine_snapshot_replica);

  if (Snapshot) {
    engine_snapshot_name = FUNC30 (Snapshot->info->filename);
    engine_snapshot_size = Snapshot->info->file_size;

    if (verbosity) {
      FUNC10 (stderr, "load index file %s (size %ld)\n", engine_snapshot_name, engine_snapshot_size);
    }
  } else {
    engine_snapshot_name = NULL;
    engine_snapshot_size = 0;
  }

  index_load_time = -FUNC12(CLOCK_MONOTONIC);

  i = FUNC17 (Snapshot);

  index_load_time += FUNC12(CLOCK_MONOTONIC);

  if (i < 0) {
    FUNC10 (stderr, "fatal: error %d while loading index file %s\n", i, engine_snapshot_name);
    FUNC9 (1);
  }

  if (verbosity) {
    FUNC10 (stderr, "load index: done, jump_log_pos=%d, time %.6ds\n",
       jump_log_pos, index_load_time);
  }

  FUNC5 (Snapshot, 1);

  Binlog = FUNC19 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC10 (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    FUNC9 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC10 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }
  binlog_load_time = FUNC12(CLOCK_MONOTONIC);

  FUNC2();

  FUNC15 (jump_log_pos, jump_log_ts, jump_log_crc32);

  i = FUNC24 (0, 1);

  if (i < 0) {
    FUNC10 (stderr, "fatal: error reading binlog\n");
    FUNC9 (1);
  }

  binlog_load_time = FUNC12(CLOCK_MONOTONIC) - binlog_load_time;
  binlog_loaded_size = log_readto_pos;

  /*if (binlog_disabled != 1) {
    jump_log_pos = log_readto_pos;
    jump_log_ts = log_last_ts;
    jump_log_crc32 = ~log_crc32_complement;
    assert (jump_log_pos == log_crc32_pos);
    clear_read_log();
    close_binlog (Binlog);
    Binlog = 0;
  }*/

  if (binlog_disabled != 1) {
    FUNC3();
  }

  FUNC4();
  start_time = FUNC32(0);

  if (w_split_mod) {
    FUNC7 (test_mode);
    return 0;
  }

  if (index_mode) {
    FUNC25 (0);
  } else {
    FUNC29();
  }
  return 0;
}