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
struct TYPE_11__ {char* filename; scalar_t__ file_size; } ;

/* Variables and functions */
 TYPE_4__* Binlog ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ MAX_ZALLOC ; 
 scalar_t__ PRIVILEGED_TCP_PORTS ; 
 int /*<<< orphan*/  STATS_SCHEMA_V1 ; 
 TYPE_3__* Snapshot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int auto_create_new_versions ; 
 int /*<<< orphan*/  backlog ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 char* binlogname ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int dynamic_data_buffer_size ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 TYPE_5__* engine_replica ; 
 char* engine_snapshot_name ; 
 int /*<<< orphan*/  engine_snapshot_replica ; 
 scalar_t__ engine_snapshot_size ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_load_time ; 
 int index_mode ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int FUNC16 (TYPE_3__*) ; 
 int log_readto_pos ; 
 int log_ts_interval ; 
 int /*<<< orphan*/  max_counters_growth_percent ; 
 int maxconn ; 
 int /*<<< orphan*/  no_argument ; 
 int now ; 
 TYPE_4__* FUNC17 (TYPE_5__*,scalar_t__) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC19 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ port ; 
 char* progname ; 
 scalar_t__ FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  required_argument ; 
 scalar_t__ reverse_index_mode ; 
 scalar_t__ reverse_index_pos ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ FUNC24 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  FUNC26 () ; 
 void* start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  test_mode ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 int today_start ; 
 scalar_t__ udp_enabled ; 
 int /*<<< orphan*/  FUNC29 () ; 
 char* username ; 
 int verbosity ; 

int FUNC30 (int argc, char *argv[]) {
  int i;
  /*
  strcpy(config_filename, "startx-engine.rc");
  */

  FUNC25 ();
  progname = argv[0];

  index_mode = 0;
  if (FUNC27 (progname, "statsx-index") != NULL) {
    index_mode = 1;
  }

  auto_create_new_versions = 1;

  FUNC20 (0, no_argument, 0, 'f', "=memcache_auto_answer_mode");
  FUNC20 ("test", no_argument, 0, 'T', "test mode");
  FUNC20 ("no-user-id", no_argument, 0, 'm', "ignore user id");
  FUNC20 ("index", no_argument, 0, 'i', "reindex");
  FUNC20 ("high-memory", no_argument, 0, 'M', "memory usage to reindex");
  FUNC20 ("no-version", no_argument, 0, 'y', "counters are valid until disabled by hands");
  FUNC20 ("custom-version", no_argument, 0, 'x', "use yyyymmdd as counter version. Includes [--no-version]");
  FUNC20 ("monthly", no_argument, 0, 'E', "enable monthly stat");
  FUNC20 ("no-set-timezone", no_argument, 0, 't', "ignore all set timezone events");
  FUNC20 ("day-start-version", no_argument, 0, 'D', "use unixtime at 0:00 as counter version");
  FUNC20 ("counter-growth", required_argument, 0, 'P', "counter hash table growth in percents (default %lf)", max_counters_growth_percent);
  FUNC20 ("default-timezone", required_argument, 0, 'S', "default timezone (hours offset from GMT)");
  FUNC20 ("cyclic-binlog", required_argument, 0, 1000, "use binlog in cyclic mode");
  
  FUNC19 (argc, argv, f_parse_option);
  if (argc != optind + 1 && argc != optind + 2) {
    FUNC29 ();
    return 2;
  }

  if (verbosity >= 3) {
    if (index_mode) {
      FUNC8 (stderr, "Starting in index mode...\n");
    }
  }
/*
  types_count = 0;
*/
//  max_binlog_size = 170;

  if (FUNC21(maxconn + 16) < 0 && !test_mode) {
    FUNC8 (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    FUNC7(1);
  }

  if (port < PRIVILEGED_TCP_PORTS) {
    sfd = FUNC24 (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      FUNC8(stderr, "cannot open server socket at port %ld: %m\n", port);
      FUNC7(1);
    }
  }

  FUNC0 (0);

  if (FUNC2(username) < 0 && !test_mode) {
    FUNC8 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC7(1);
  }

  if (MAX_ZALLOC > 0) {
  } else {
    dynamic_data_buffer_size = (1 << 23);
  }
  FUNC12();
  if (udp_enabled) {
    FUNC14 (FUNC10 (), port);
  }
/*
  reload_config();
*/

  if (FUNC6 (argv[optind], binlogname) < 0) {
    FUNC8 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC7 (1);
  }


  log_ts_interval = 10;
  int tt;
  today_start = tt = FUNC28(0);
  today_start -= tt % 86400;

  //Snapshot reading
  Snapshot = FUNC18 (engine_snapshot_replica);

  if (Snapshot) {
    engine_snapshot_name = Snapshot->info->filename;
    engine_snapshot_size = Snapshot->info->file_size;

    if (verbosity) {
      FUNC8 (stderr, "load index file %s (size %ld)\n", engine_snapshot_name, engine_snapshot_size);
    }
  } else {
    engine_snapshot_name = NULL;
    engine_snapshot_size = 0;
  }

  index_load_time = -FUNC11(CLOCK_MONOTONIC);

  i = FUNC16 (Snapshot);

  index_load_time += FUNC11(CLOCK_MONOTONIC);

  if (i < 0) {
    FUNC8 (stderr, "fatal: error %d while loading index file %s\n", i, engine_snapshot_name);
    FUNC7 (1);
  }


  if (verbosity) {
    FUNC8 (stderr, "Reading binlog from position %ld\n", jump_log_pos);
  }

  if (reverse_index_mode) {
    FUNC1 (FUNC15 (STATS_SCHEMA_V1) >= 0);
    if (reverse_index_pos) {
      jump_log_pos = reverse_index_pos;
    } else {
      jump_log_pos = FUNC9 (engine_replica, 0, 0) + 36;
    }
  }

  log_ts_interval = 10;
  today_start = now = FUNC28(0);
  today_start -= now % 86400;
  Binlog = FUNC17 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC8 (stderr, "fatal: cannot find binlog for %s, log position %ld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC7 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC8 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }
  binlog_load_time = FUNC11(CLOCK_MONOTONIC);

  FUNC3();

  FUNC13 (jump_log_pos, jump_log_ts, jump_log_crc32);

  i = FUNC22 (0, 1);

  if (i < 0) {
    FUNC8 (stderr, "fatal: error reading binlog\n");
    FUNC7 (1);
  }

  binlog_load_time = FUNC11(CLOCK_MONOTONIC) - binlog_load_time;
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  if (!binlog_disabled) {
    FUNC4();
  }


  if (index_mode) {
    if (verbosity >= 1) {
      FUNC8 (stderr, "Saving index...\n");
    }
    if (!reverse_index_mode) {
      FUNC23 ();
    } else {
      FUNC1 (0);
    }
  } else {
    FUNC5();
    start_time = FUNC28(0);

    FUNC26();
  }

  return 0;
}