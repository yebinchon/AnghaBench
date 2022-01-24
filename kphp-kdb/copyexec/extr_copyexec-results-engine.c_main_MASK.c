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
struct TYPE_8__ {int /*<<< orphan*/  replica_prefix; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {char* filename; int /*<<< orphan*/  file_size; } ;

/* Variables and functions */
 void* BACKLOG ; 
 TYPE_2__* Binlog ; 
 scalar_t__ MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 void* backlog ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 char* binlogname ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int daemonize ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 scalar_t__ jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ log_readto_pos ; 
 void* logname ; 
 int max_lru_size ; 
 scalar_t__ maxconn ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_2__* FUNC14 (TYPE_3__*,scalar_t__) ; 
 void* optarg ; 
 int optind ; 
 void* port ; 
 char* progname ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (void*,char*,int*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC22 (int,char*,...) ; 

int FUNC23 (int argc, char *argv[]) {
  int i;
  char new_binlog = 0;
  FUNC17 ();

  progname = argv[0];
  while ((i = FUNC9 (argc, argv, "a:b:c:l:p:dhu:vEM:")) != -1) {
    switch (i) {
    case 'E':
      new_binlog = 1;
      break;
    case 'M':
      if (FUNC18 (optarg, "%d", &i) != 1 || i < 1) {
        FUNC12 ("invalid -M arg: %s", optarg);
        FUNC21 ();
      }
      max_lru_size = i;
      break;
    case 'a':
      binlogname = optarg;
      break;
    case 'b':
      backlog = FUNC1 (optarg);
      if (backlog <= 0) backlog = BACKLOG;
      break;
    case 'c':
      maxconn = FUNC1 (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
	maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'd':
      daemonize ^= 1;
      break;
    case 'h':
      FUNC21 ();
      break;
    case 'l':
      logname = optarg;
      break;
    case 'p':
      port = FUNC1(optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    }
  }

  if (argc != optind + 1) {
    FUNC21 ();
  }

  if (FUNC15 (maxconn + 16) < 0) {
    FUNC12 ("fatal: cannot raise open file limit to %d\n", maxconn+16);
    FUNC8 (1);
  }

  FUNC0 (0);

  if (FUNC2 (username) < 0) {
    FUNC12 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC8 (1);
  }

  if (new_binlog) {
    FUNC6 (argv[optind]);
    FUNC8 (0);
  }

  FUNC10 ();

  if (FUNC7 (argv[optind], binlogname) < 0) {
    FUNC12 ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC8 (1);
  }

  FUNC22 (3, "engine_preload_filelist done\n");

  //Binlog reading
  Binlog = FUNC14 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC12 ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC8 (1);
  }
  binlogname = Binlog->info->filename;
  FUNC22 (1, "replaying binlog file %s (size %lld) from position %lld\n", binlogname, Binlog->info->file_size, jump_log_pos);
  binlog_load_time = -FUNC13();
  FUNC3 ();
  FUNC11 (jump_log_pos, jump_log_ts, jump_log_crc32);
  FUNC22 (1, "replay log events started\n");
  i = FUNC16 (0, 1);
  FUNC22 (1, "replay log events finished\n");
  if (i < 0) {
    FUNC12 ("fatal: error reading binlog\n");
    FUNC8 (1);
  }
  binlog_load_time += FUNC13();
  binlog_loaded_size = log_readto_pos - jump_log_pos;
  if (!binlog_disabled) {
    FUNC4();
  }
  FUNC5 ();
  start_time = FUNC20 (0);

  FUNC19 ();

  return 0;
}