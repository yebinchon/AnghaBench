#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  replica_prefix; } ;
struct TYPE_12__ {TYPE_2__* info; } ;
struct TYPE_11__ {TYPE_1__* info; } ;
struct TYPE_10__ {char* filename; int /*<<< orphan*/  file_size; } ;
struct TYPE_9__ {scalar_t__ file_size; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 TYPE_4__* Binlog ; 
 TYPE_3__* Snapshot ; 
 int /*<<< orphan*/  aes_pwd_file ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  binlog_load_time ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 TYPE_5__* engine_replica ; 
 int /*<<< orphan*/ * engine_snapshot_name ; 
 int /*<<< orphan*/  engine_snapshot_replica ; 
 scalar_t__ engine_snapshot_size ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 int /*<<< orphan*/  index_load_time ; 
 scalar_t__ index_mode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  no_argument ; 
 TYPE_4__* FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC12 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int,char*,...) ; 
 int /*<<< orphan*/  weights_engine ; 

int FUNC23 (int argc, char *argv[]) {
  int i;
  FUNC17 ();
  FUNC13 ("index", no_argument, 0, 'i', "reindex");
  FUNC14 (201);
  FUNC13 ("udp", no_argument, 0, 'U', "enables udp message support");
  FUNC12 (argc, argv, f_parse_option);

  progname = argv[0];

  if (argc != optind + 1) {
    FUNC21();
    return 2;
  }

  FUNC3 (&weights_engine, aes_pwd_file, index_mode);

  if (FUNC4 (argv[optind], binlogname) < 0) {
    FUNC7 ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC5 (1);
  }

  FUNC22 (3, "engine_preload_filelist done\n");

  //Snapshot reading
  Snapshot = FUNC11 (engine_snapshot_replica);

  if (Snapshot) {
    engine_snapshot_name = FUNC19 (Snapshot->info->filename);
    engine_snapshot_size = Snapshot->info->file_size;
    FUNC22 (1, "load index file %s (size %lld)\n", engine_snapshot_name, engine_snapshot_size);

    index_load_time = -FUNC9();

    i = FUNC8 ();

    if (i < 0) {
      FUNC7 ("load_index returned fail code %d.\n", i);
      FUNC5 (1);
    }
    index_load_time += FUNC9();
  } else {
    engine_snapshot_name = NULL;
    engine_snapshot_size = 0;
    index_load_time = 0;
  }

  //Binlog reading
  Binlog = FUNC10 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC7 ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC5 (1);
  }

  binlogname = Binlog->info->filename;

  FUNC22 (1, "replaying binlog file %s (size %lld) from position %lld\n", binlogname, Binlog->info->file_size, jump_log_pos);

  binlog_load_time = -FUNC9();

  FUNC0 ();

  FUNC6 (jump_log_pos, jump_log_ts, jump_log_crc32);

  FUNC22 (1, "replay log events started\n");
  i = FUNC15 (0, 1);
  FUNC22 (1, "replay log events finished\n");

  binlog_load_time += FUNC9();

  if (!binlog_disabled) {
    FUNC1();
  }

  if (i < 0) {
    FUNC7 ("fatal: error reading binlog\n");
    FUNC5 (1);
  }

  FUNC2 ();
  start_time = FUNC20 (0);

  if (index_mode) {
    FUNC16 (0);
  } else {
    FUNC18 ();
  }

  return 0;
}