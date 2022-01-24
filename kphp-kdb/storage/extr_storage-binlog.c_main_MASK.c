#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* Binlog; } ;
typedef  TYPE_2__ volume_t ;
typedef  int /*<<< orphan*/  V ;
struct TYPE_12__ {int /*<<< orphan*/  replica_prefix; } ;
struct TYPE_11__ {TYPE_1__* info; } ;
struct TYPE_9__ {char* filename; int /*<<< orphan*/  file_size; } ;

/* Variables and functions */
 TYPE_3__* Binlog ; 
 int /*<<< orphan*/  binlog_load_time ; 
 char* binlogname ; 
 int dump_log_pos ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 TYPE_4__* engine_replica ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  out ; 
 int secret_in_base64url ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

int FUNC10 (int argc, char *argv[]) {
  int i;
  out = stdout;
  while ((i = FUNC3 (argc, argv, "tphuv")) != -1) {
    switch (i) {
    case 'p':
      dump_log_pos = 1;
      break;
    case 'u':
      secret_in_base64url = 1;
      break;
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC8();
      return 2;
    }
  }

  if (optind >= argc) {
    FUNC8();
    return 2;
  }

  volume_t V;
  FUNC5 (&V, 0, sizeof (V));

  if (FUNC1 ( argv[optind], binlogname) < 0) {
    FUNC4 ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC2 (1);
  }

  FUNC9 (3, "engine_preload_filelist done\n");
  Binlog = V.Binlog = FUNC7 (engine_replica, jump_log_pos);
  if (!V.Binlog) {
    FUNC4 ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
    FUNC2 (1);
  }

  binlogname = V.Binlog->info->filename;

  FUNC9 (1, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
  binlog_load_time = -FUNC6();

  FUNC0 (&V, 0);

  FUNC9 (1, "replay log events finished\n");

  binlog_load_time += FUNC6();

  return 0;
}