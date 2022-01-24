#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* replica_prefix; } ;
struct TYPE_13__ {TYPE_2__* info; } ;
struct TYPE_12__ {TYPE_1__* info; } ;
struct TYPE_11__ {char* filename; int /*<<< orphan*/  file_size; } ;
struct TYPE_10__ {char* filename; scalar_t__ file_size; } ;

/* Variables and functions */
 TYPE_4__* Binlog ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 TYPE_3__* Snapshot ; 
 scalar_t__ active_users_stats_replay_logevent ; 
 int /*<<< orphan*/  binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int cnt_id ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ dump_stats_replay_logevent ; 
 scalar_t__ dump_unique_cid_stats_replay_logevent ; 
 int end_time ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 TYPE_5__* engine_replica ; 
 char* engine_snapshot_name ; 
 int /*<<< orphan*/  engine_snapshot_replica ; 
 scalar_t__ engine_snapshot_size ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int FUNC8 (TYPE_3__*) ; 
 int log_readto_pos ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_4__* FUNC10 (TYPE_5__*,scalar_t__) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  out ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ replay_logevent ; 
 int /*<<< orphan*/  snapshot_load_time ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int*) ; 
 int start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 

int FUNC16 (int argc, char *argv[]) {
  int use_index = 0;
  int i;
  out = stdout;
  replay_logevent = dump_stats_replay_logevent;
  while ((i = FUNC6 (argc, argv, "c:hvlS:T:ui")) != -1) {
    switch (i) {
    case 'i':
      use_index = 1;
      break;
    case 'S':
      if (1 == FUNC13(optarg, "%d", &i)) {
        start_time = i;
      }
      break;
    case 'T':
      if (1 == FUNC13(optarg, "%d", &i)) {
        end_time = i;
      }
      break;
    case 'c':
      if (1 == FUNC13(optarg, "%d", &i)) {
        cnt_id = i;
      }
      break;
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC14();
      return 2;
    case 'l':
      replay_logevent = dump_unique_cid_stats_replay_logevent;
      break;
    case 'u':
      replay_logevent = active_users_stats_replay_logevent;
      break;
    }
  }

  if (optind >= argc) {
    FUNC14();
    return 2;
  }

  if (FUNC2 ( argv[optind], binlogname) < 0) {
    FUNC4 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC3 (1);
  }
  
  if (use_index) {
    FUNC15 (1, "Use index\n");
    //Snapshot reading
    Snapshot = FUNC11 (engine_snapshot_replica);

    if (Snapshot) {
      engine_snapshot_name = Snapshot->info->filename;
      engine_snapshot_size = Snapshot->info->file_size;
      FUNC15 (1, "load index file %s (size %lld)\n", engine_snapshot_name, engine_snapshot_size);
    } else {
      engine_snapshot_name = NULL;
      engine_snapshot_size = 0;
    }

    snapshot_load_time = -FUNC5(CLOCK_MONOTONIC);
    i = FUNC8 (Snapshot);  
    snapshot_load_time += FUNC5(CLOCK_MONOTONIC);
    if (i < 0) {
      FUNC4 (stderr, "fatal: error %d while loading index file %s\n", i, engine_snapshot_name);
      FUNC3 (1);
    }
  }


  if (verbosity>=3){
    FUNC4 (stderr, "engine_preload_filelist done\n");
  }
  FUNC15 (3, "jump_log_pos = %lld\n", jump_log_pos);
  Binlog = FUNC10 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC4 (stderr, "fatal: cannot find binlog for %s, log position %ld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC3 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC4 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }
  binlog_load_time = -FUNC9();
  FUNC0();
  FUNC7 (jump_log_pos, jump_log_ts, jump_log_crc32);
  if (verbosity) {
    FUNC4 (stderr, "replay log events started\n");
  }

  i = FUNC12 (0, 1);
 
  if (verbosity) {
    FUNC4 (stderr, "replay log events finished\n");
  }

  binlog_load_time += FUNC9();
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  if (replay_logevent == active_users_stats_replay_logevent || replay_logevent == dump_unique_cid_stats_replay_logevent) {
    FUNC1 ();
  }

  return 0;
}