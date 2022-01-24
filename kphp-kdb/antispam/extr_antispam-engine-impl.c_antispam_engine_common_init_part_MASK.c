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
struct TYPE_11__ {int /*<<< orphan*/  file_size; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 TYPE_4__* Binlog ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 TYPE_3__* Snapshot ; 
 int binlog_disabled ; 
 scalar_t__ binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 TYPE_5__* engine_replica ; 
 char* engine_snapshot_name ; 
 int /*<<< orphan*/  engine_snapshot_replica ; 
 int /*<<< orphan*/  engine_snapshot_size ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 scalar_t__ log_pos ; 
 scalar_t__ log_readto_pos ; 
 TYPE_4__* FUNC11 (TYPE_5__*,scalar_t__) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 

void FUNC16 (char const* index_fname) {
  if (FUNC5 (index_fname, binlogname) < 0) {
    FUNC7 (stderr, "fatal: cannot preload files for binlog: '%s' and index: '%s'\n", binlogname, index_fname);
    FUNC6 (1);
  }

  Snapshot = FUNC12 (engine_snapshot_replica);

  if (Snapshot) {
    engine_snapshot_name = FUNC14 (Snapshot->info->filename);
    engine_snapshot_size = Snapshot->info->file_size;


    if (verbosity > 0) {
      FUNC7 (stderr, "load index file %s (size %d)\n", engine_snapshot_name, engine_snapshot_size);
    }
  } else {
    engine_snapshot_name = NULL;
    engine_snapshot_size = 0;
  }

  FUNC9 (Snapshot);
  FUNC3 (Snapshot, 1);

  // Load binlog
  Binlog = FUNC11 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC7 (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    FUNC6 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity > 0) {
    FUNC7 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }
  binlog_load_time = FUNC8 (CLOCK_MONOTONIC);

  FUNC0();

  FUNC10 (jump_log_pos, jump_log_ts, jump_log_crc32);

  if (verbosity > 0) {
    FUNC7 (stderr, "jump_log_pos = %ld\nreplay log events started\n", jump_log_pos);
  }

  int replay_log_result = FUNC13 (0, 1);

  if (binlog_disabled != 1) {
    FUNC1();
  }

  if (replay_log_result < 0) {
    FUNC7 (stderr, "fatal: error reading binlog\n");
    FUNC6 (1);
  }
  if (verbosity > 0) {
    FUNC7 (stderr, "replay log events finished\n");
  }

  binlog_load_time = FUNC8 (CLOCK_MONOTONIC) - binlog_load_time;
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  if (verbosity > 0) {
    FUNC7 (stderr, "replay binlog file: done, log_pos=%lld, used_z_memory=%d, time %.6lds\n",
            (long long)log_pos, FUNC4 (), binlog_load_time);
  }

  FUNC2();

  start_time = FUNC15 (0);
}