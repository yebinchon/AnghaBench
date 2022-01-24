#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct lev_start {int split_mod; int split_max; scalar_t__ split_min; scalar_t__ extra_bytes; int /*<<< orphan*/  schema_id; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {int /*<<< orphan*/  replica_prefix; } ;
struct TYPE_9__ {TYPE_1__* info; } ;
struct TYPE_8__ {int /*<<< orphan*/ * filename; } ;

/* Variables and functions */
 TYPE_2__* Binlog ; 
 int /*<<< orphan*/  DNS_SCHEMA_V1 ; 
 int /*<<< orphan*/  LEV_START ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 struct lev_start* FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  binlog_allow_query_networks ; 
 int /*<<< orphan*/  binlog_allow_query_networks6 ; 
 int /*<<< orphan*/ * binlogname ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_zones ; 
 int dns_convert_config_to_binlog ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* engine_replica ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int) ; 
 char const* include_binlog_name ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 scalar_t__ log_readto_pos ; 
 int FUNC18 (char*,int,int) ; 
 TYPE_2__* FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int) ; 
 int FUNC21 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int,char*) ; 
 int FUNC24 (int,struct lev_start*,int) ; 
 int /*<<< orphan*/  zones ; 

int FUNC25 (const char *filename, int exit_after_first_error, const char *output_binlog_name) {
  if (output_binlog_name) {
    char a[PATH_MAX];
    FUNC2 (FUNC21 (a, PATH_MAX, "%s.bin", output_binlog_name) < PATH_MAX);
    int fd = FUNC18 (a, O_CREAT | O_WRONLY | O_EXCL, 0660);
    if (fd < 0) {
      FUNC17 ("open ('%s', O_CREAT | O_WRONLY | O_EXCL, 0660) failed. %m\n", a);
      FUNC12 (1);
    }
    struct lev_start *E = FUNC0 (24);
    E->type = LEV_START;
    E->schema_id = DNS_SCHEMA_V1;
    E->extra_bytes = 0;
    E->split_mod = 1;
    E->split_min = 0;
    E->split_max = 1;
    FUNC2 (FUNC24 (fd, E, 24) == 24);
    FUNC2 (FUNC15 (fd) >= 0);
    FUNC2 (FUNC6 (fd) >= 0);
    if (FUNC11 (output_binlog_name, NULL) < 0) {
      FUNC17 ("cannot open binlog files for %s\n", output_binlog_name);
      FUNC12 (1);
    }
    Binlog = FUNC19 (engine_replica, 0);
    if (!Binlog) {
      FUNC17 ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0ll);
      FUNC12 (1);
    }
    binlogname = Binlog->info->filename;
    FUNC3 ();
    FUNC16 (0, 0, 0);
    FUNC23 (1, "replay log events started\n");
    FUNC2 (FUNC20 (0, 1) >= 0);
    FUNC23 (1, "replay log events finished\n");
    FUNC4();
    FUNC5 ();
    FUNC2 (FUNC1 (Binlog) == log_readto_pos);
    dns_convert_config_to_binlog = 1;
  }
  include_binlog_name = NULL;
  FUNC10 ();
  int res = FUNC8 (filename, exit_after_first_error, 0);
  FUNC9 ();
  FUNC13 (0); //free cyclic buffer
  config_zones = zones;
  if (output_binlog_name) {
    if (include_binlog_name) {
      FUNC17 ("ERROR: Config contains $BINLOG macro. This feature is forbidden in writing binlog mode.\n");
      return -1;
    }
    FUNC14 ();
    FUNC22 (2);
    FUNC7 (Binlog, 1);
    Binlog = NULL;
    binlogname = NULL;
  }

  if (include_binlog_name && !binlog_allow_query_networks && !binlog_allow_query_networks6) {
    FUNC17 ("Ignore '$BINLOG %s' macro since there isn't any '$BINLOG_ALLOW_QUERY <network addr>' macro in config.\n", include_binlog_name);
    include_binlog_name = NULL;
  }
  return res;
}