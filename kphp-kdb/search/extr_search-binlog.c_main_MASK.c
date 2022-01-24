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
 int /*<<< orphan*/  binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int dump_log_pos ; 
 int /*<<< orphan*/  dump_search_replay_logevent ; 
 int dump_timestamp ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 int /*<<< orphan*/  jump_log_ts ; 
 scalar_t__ log_readto_pos ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* FUNC7 (TYPE_3__*,long long) ; 
 int optind ; 
 int /*<<< orphan*/  out ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  replay_logevent ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int verbosity ; 

int FUNC10 (int argc, char *argv[]) {
  int i;
  long long jump_log_pos = 0;
  out = stdout;
  replay_logevent = dump_search_replay_logevent;
  while ((i = FUNC4 (argc, argv, "tphv")) != -1) {
    switch (i) {
    case 'p':
      dump_log_pos = 1;
      break;
    case 't':
      dump_timestamp = 1;
      break;
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC9();
      return 2;
    }
  }

  if (optind >= argc) {
    FUNC9();
    return 2;
  }

  if (FUNC1 ( argv[optind], binlogname) < 0) {
    FUNC3 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC2 (1);
  }

  if (verbosity>=3){
    FUNC3 (stderr, "engine_preload_filelist done\n");
  }

  Binlog = FUNC7 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC3 (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC2 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC3 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }
  binlog_load_time = -FUNC6();
  FUNC0();
  FUNC5 (jump_log_pos, jump_log_ts, jump_log_crc32);
  if (verbosity) {
    FUNC3 (stderr, "replay log events started\n");
  }

  i = FUNC8 (0, 1);

  if (verbosity) {
    FUNC3 (stderr, "replay log events finished\n");
  }

  binlog_load_time += FUNC6();
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  return 0;

}