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
 TYPE_2__* Binlog ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int dump_log_pos ; 
 int dump_timestamp ; 
 int dumping_crc32 ; 
 void* end_time ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 scalar_t__ log_readto_pos ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_2__* FUNC10 (TYPE_3__*,long long) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  out ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 void* start_time ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 

int FUNC14 (int argc, char *argv[]) {
  int i;
  long long jump_log_pos = 0;
  out = stdout;
  while ((i = FUNC6 (argc, argv, "tphvCS:T:")) != -1) {
    switch (i) {
    case 'C':
      dumping_crc32 = 1;
      break;
    case 'S':
      start_time = FUNC0 (optarg);
      break;
    case 'T':
      end_time = FUNC0 (optarg);
      break;
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
      FUNC12 ();
    }
  }

  if (optind >= argc) {
    FUNC12 ();
  }

  if (FUNC2 (argv[optind], binlogname) < 0) {
    FUNC8 ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC3 (1);
  }

  FUNC13 (3, "engine_preload_filelist done\n");

  Binlog = FUNC10 (engine_replica, jump_log_pos);
  if (!Binlog) {
    FUNC8 ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC3 (1);
  }

  binlogname = Binlog->info->filename;

  FUNC13 (1, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);

  binlog_load_time = -FUNC9();
  FUNC1();
  FUNC7 (jump_log_pos, jump_log_ts, jump_log_crc32);
  FUNC13 (1, "replay log events started\n");

  i = FUNC11 (0, 1);

  FUNC5 (out);
  FUNC4 (out);

  FUNC13 (1, "replay log events finished\n");

  binlog_load_time += FUNC9();
  binlog_loaded_size = log_readto_pos - jump_log_pos;

  return 0;
}