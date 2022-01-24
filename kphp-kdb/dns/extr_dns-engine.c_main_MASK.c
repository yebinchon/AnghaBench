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
struct TYPE_6__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 TYPE_2__* Binlog ; 
 scalar_t__ PRIVILEGED_TCP_PORTS ; 
 int binlog_disabled ; 
 int /*<<< orphan*/  binlog_load_time ; 
 int /*<<< orphan*/  binlogname ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* config_name ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int dynamic_data_buffer_size ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  f_parse_option ; 
 int /*<<< orphan*/  include_binlog_name ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int /*<<< orphan*/  keep_going ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 scalar_t__ maxconn ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  no_argument ; 
 TYPE_2__* FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 size_t optind ; 
 int /*<<< orphan*/ * output_binlog_name ; 
 int /*<<< orphan*/  FUNC15 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char*) ; 
 scalar_t__ port ; 
 char* progname ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  required_argument ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  start_time ; 
 scalar_t__ stats_port ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 char* username ; 
 int /*<<< orphan*/  FUNC25 (int,char*) ; 

int FUNC26 (int argc, char *argv[]) {
  FUNC20 ();
  progname = argv[0];

  FUNC18 ('r');
  FUNC18 ('B');
  FUNC18 (203);
  FUNC16 ("workers", required_argument, 0, 'M', "sets number of additional worker processes");
  FUNC16 ("max-response-records", required_argument, 0, 'R', "limits max records number in the response");
  FUNC16 ("stats-port", required_argument, 0, 'P', "sets port for getting stats using memcache queries");
  FUNC16 ("output", required_argument, 0, 'E', "sets exported binlog name for converting config to binlog");
  FUNC16 ("keep-going", no_argument, 0, 'k', "reports as much config errors as possible");
  FUNC15 (argc, argv, f_parse_option);

  if (output_binlog_name) {
    port = stats_port = 0;
  }
  if (!port && output_binlog_name == NULL) {
    FUNC24 ();
  }
  config_name = argv[optind];

  if (port > 0 && port < PRIVILEGED_TCP_PORTS) {
    FUNC14 ();
  }

  if (FUNC17 (maxconn + 16) < 0) {
    FUNC11 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC7 (1);
  }

  if (FUNC0 (username) < 0) {
    FUNC11 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC7 (1);
  }

  FUNC21 (FUNC23 (0));
  dynamic_data_buffer_size = 64 << 20;
  FUNC8 ();
  FUNC5 ();
  //TODO: replace config by binlog
  if (FUNC4 (config_name, !keep_going, output_binlog_name) < 0) {
    FUNC7 (1);
  }
  if (output_binlog_name) {
    FUNC7 (0);
  }
  if (include_binlog_name) {
    binlog_load_time = -FUNC12 ();
    binlog_disabled = 1;
    if (FUNC6 (include_binlog_name, NULL) < 0) {
      FUNC11 ("cannot open binlog files for %s\n", include_binlog_name);
      FUNC7 (1);
    }
    Binlog = FUNC13 (engine_replica, jump_log_pos);
    if (!Binlog) {
      FUNC11 ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
      FUNC7 (1);
    }
    binlogname = Binlog->info->filename;
    FUNC1 ();
    FUNC9 (jump_log_pos, 0, 0);
    FUNC25 (1, "replay log events started\n");
    if (FUNC19 (0, 1) < 0) {
      FUNC7 (1);
    }
    FUNC25 (1, "replay log events finished\n");
    binlog_load_time += FUNC12 ();
    if (!binlog_disabled) {
      FUNC2 ();
    }
    FUNC3 ();
  }
  FUNC10 (0);
  start_time = FUNC23 (NULL);
  FUNC22 ();
  return 0;
}