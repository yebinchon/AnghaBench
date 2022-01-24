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
struct TYPE_13__ {long long offset; TYPE_2__* info; } ;
struct TYPE_12__ {TYPE_1__* info; } ;
struct TYPE_11__ {char* filename; int log_pos; int /*<<< orphan*/  file_size; } ;
struct TYPE_10__ {char* filename; scalar_t__ file_size; } ;

/* Variables and functions */
 TYPE_4__* Binlog ; 
 int /*<<< orphan*/  CD_ENGINE ; 
 int /*<<< orphan*/  CD_INDEXER ; 
 scalar_t__ DEFAULT_MAX_ALLOCATED_METAFILES_SIZE ; 
 int /*<<< orphan*/  MAX_NEWS_DAYS ; 
 TYPE_3__* Snapshot ; 
 int /*<<< orphan*/  aes_pwd_file ; 
 int binlog_crc32_verbosity_level ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  binlog_load_time ; 
 int binlog_loaded_size ; 
 int binlog_read ; 
 char* binlogname ; 
 scalar_t__ check_index_mode ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 TYPE_5__* engine_replica ; 
 char* engine_snapshot_name ; 
 int /*<<< orphan*/  engine_snapshot_replica ; 
 scalar_t__ engine_snapshot_size ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  index_load_time ; 
 scalar_t__ index_mode ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 long long jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 void* last_collect_garbage_time ; 
 int FUNC10 (TYPE_3__*) ; 
 long long log_readto_pos ; 
 scalar_t__ log_ts_interval ; 
 int max_news_days ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 void* min_logevent_time ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  news_engine ; 
 int /*<<< orphan*/  no_argument ; 
 TYPE_4__* FUNC13 (TYPE_5__*,long long) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC15 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* progname ; 
 scalar_t__ regenerate_index_mode ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  required_argument ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 void* start_time ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC22 (char*) ; 
 void* FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (char*,long long) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ verbosity ; 

int FUNC26 (int argc, char *argv[]) {
  int i;
  FUNC20 ();
  progname = argv[0];

  FUNC16 ("days", required_argument, 0, 't', "Number of days to keep news (default %d)", MAX_NEWS_DAYS);
  FUNC16 ("index", no_argument, 0, 'i', "reindex");
  FUNC16 ("metafiles-memory", required_argument, 0, 'C', "memory for metafiles cache (default %lld)", (long long)DEFAULT_MAX_ALLOCATED_METAFILES_SIZE);
  FUNC16 ("check-index", no_argument, 0, 'L', "check index mode");
  FUNC16 ("regenerate-index", no_argument, 0, 'R', "regenerate index mode");

  FUNC15 (argc, argv, f_parse_option);
  if (argc != optind + 1 && argc != optind + 2) {
    FUNC25();
    return 2;
  }

  if (regenerate_index_mode) {
    check_index_mode = 0;
  }

  if (FUNC22 (argv[0]) >= 5 && FUNC11 ( argv[0] + FUNC22 (argv[0]) - 5, "index" , 5) == 0) {
    index_mode++;
  }

  FUNC4 (&news_engine, aes_pwd_file, index_mode);

  if (FUNC5 (argv[optind], binlogname) < 0) {
    FUNC7 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC6 (1);
  }

  log_ts_interval = 0;

  //Snapshot reading
  Snapshot = FUNC14 (engine_snapshot_replica);

  if (Snapshot) {
    engine_snapshot_name = Snapshot->info->filename;
    engine_snapshot_size = Snapshot->info->file_size;

    if (verbosity) {
      FUNC7 (stderr, "load index file %s (size %ld)\n", engine_snapshot_name, engine_snapshot_size);
    }
  } else {
    engine_snapshot_name = NULL;
    engine_snapshot_size = 0;
  }

  index_load_time = -FUNC12();

  i = FUNC10 (Snapshot);

  index_load_time += FUNC12();

  if (i < 0) {
    FUNC7 (stderr, "fatal: error %d while loading index file %s\n", i, engine_snapshot_name);
    FUNC6 (1);
  }

  //close_snapshot (Snapshot, 1);

  if (verbosity) {
    FUNC7 (stderr, "load index: done, jump_log_pos=%lld, time %.6ds\n",
       jump_log_pos, index_load_time);
  }

  //Binlog reading
  Binlog = FUNC13 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC7 (stderr, "fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC6 (1);
  }
  binlogname = Binlog->info->filename;
  
  FUNC8 (0, index_mode ? CD_INDEXER : CD_ENGINE);
  FUNC3 (engine_replica->replica_prefix);

  if (verbosity) {
    FUNC7 (stderr, "replaying binlog file %s (size %d) from position %lld (crc32=%u, ts=%d)\n", binlogname, Binlog->info->file_size, jump_log_pos, jump_log_crc32, jump_log_ts);
  }

  binlog_load_time = -FUNC12();

  FUNC0();

  FUNC9 (jump_log_pos, jump_log_ts, jump_log_crc32);

  if (verbosity) { FUNC7 (stderr, "replay log events started\n");}

  min_logevent_time = FUNC23(0) - (max_news_days + 1) * 86400;
  i = FUNC18 (0, 1);
  if (verbosity) { FUNC7 (stderr, "replay log events finished\n");}

  binlog_load_time += FUNC12();
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  if (!binlog_disabled) {
    FUNC1();
  }

  if (i == -2) {
    long long true_readto_pos = log_readto_pos - Binlog->info->log_pos + Binlog->offset;
    FUNC7 (stderr, "REPAIR: truncating %s at log position %lld (file position %lld)\n", Binlog->info->filename, log_readto_pos, true_readto_pos);
    if (FUNC24 (Binlog->info->filename, true_readto_pos) < 0) {
      FUNC17 ("truncate()");
      FUNC6 (2);
    }
  } else if (i < 0) {
    FUNC7 (stderr, "fatal: error reading binlog\n");
    FUNC6 (1);
  }
  binlog_read = 1;
  binlog_crc32_verbosity_level = 5;

  //if (verbosity) {
  //  fprintf (stderr, "replay binlog file: done, log_pos=%lld, alloc_mem=%ld, time %.06lfs\n",
  //           (long long) log_pos, (long) get_memory_used (), binlog_load_time);
  //}


  FUNC2();
  last_collect_garbage_time = start_time = FUNC23(0);
  check_index_mode = 0;

  if (index_mode) {
    FUNC19 (0);
  } else {
    FUNC21 ();
  }

  return 0;
}