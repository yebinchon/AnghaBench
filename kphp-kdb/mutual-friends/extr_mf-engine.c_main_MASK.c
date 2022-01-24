#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  backlog ; 
 int /*<<< orphan*/  binlog_disabled ; 
 char* binlog_fname_buff ; 
 int /*<<< orphan*/  binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 int binlog_readed ; 
 char* binlogname ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ dyn_cur ; 
 scalar_t__ dyn_first ; 
 scalar_t__ dyn_last ; 
 int dynamic_data_buffer_size ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__* fsize ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  index_load_time ; 
 int index_mode ; 
 char* indexname ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  interactive ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 int jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  log_pos ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int log_ts_interval ; 
 int maxconn ; 
 int /*<<< orphan*/  mf_parse_option ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 char* newindex_fname_buff ; 
 char* newindexname ; 
 int /*<<< orphan*/  no_argument ; 
 void* now ; 
 int /*<<< orphan*/  FUNC17 (int,char*,int) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC18 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char,char*) ; 
 int port ; 
 char* progname ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  required_argument ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 scalar_t__ FUNC24 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int,scalar_t__) ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  FUNC27 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 void* start_time ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC29 (char*) ; 
 int /*<<< orphan*/ * FUNC30 (char*,char*) ; 
 int /*<<< orphan*/ * suggname ; 
 void* FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 char* username ; 
 scalar_t__ verbosity ; 

int FUNC33 (int argc, char *argv[]) {
  int i;

  FUNC25 ();
  progname = argv[0];
  now = FUNC31 (NULL);

  index_mode = 0;
  if (FUNC30 (progname, "mf-index") != NULL) {
    index_mode = 1;
  }
  binlog_readed = 0;

  FUNC21 ('B');
  FUNC21 (204);
  FUNC19 ("memory-limit", required_argument, NULL, 'm', "<memory-limit> sets maximal size of used memory not including zmemory in mebibytes");
  FUNC19 ("suggestions-file-name", required_argument, NULL, 's', "<suggestions-file-name> name of file with precalculated suggestions");
  FUNC19 ("new-index-name", required_argument, NULL, 'w', "<new-index-name> new name for index");
  FUNC19 ("disable-crc32", no_argument, NULL, 'D', "sets disable_crc32 to 3");
  FUNC19 ("generate-dump", no_argument, NULL, 'e', "generate dump to use in mf-merge-files");
  if (!index_mode) {
    FUNC19 ("index-mode", no_argument, NULL, 'i', "run in index mode");
  }
  FUNC19 ("lock-memory", no_argument, NULL, 'k', "lock paged memory");

  FUNC18 (argc, argv, mf_parse_option);
  if (argc != optind + 1) {
    FUNC32();
    return 2;
  }

  FUNC12 (5);

  if (verbosity > 0) {
    FUNC7 (stderr, "index_mode = %d\n", index_mode);
  }

  dynamic_data_buffer_size = (1 << 16);

  FUNC11();

  if (!username && maxconn == MAX_CONNECTIONS && FUNC9()) {
    maxconn = 1000; //not for root
  }

  indexname = argv[optind];

  index_load_time = -FUNC16();
  FUNC10 (indexname);
  index_load_time += FUNC16();

  if (FUNC20 (maxconn + 16) < 0) {
    FUNC7 (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    FUNC6 (1);
  }

  if (!index_mode) {
    sfd = FUNC24 (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      FUNC7 (stderr, "cannot open server socket at port %d: %m\n", port);
      FUNC6 (1);
    }
  }

  FUNC0 (NULL);

  if (FUNC1 (username) < 0 && !interactive) {
    FUNC7 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC6 (1);
  }

  if (!binlogname) {
    binlogname = ".bin";
  }

  if (!newindexname) {
    newindexname = ".tmp";
  }

  if (binlogname[0] == '.' && optind < argc && FUNC29 (binlogname) + FUNC29 (argv[optind]) < 250) {
    FUNC27 (binlog_fname_buff, "%s%s", argv[optind], binlogname);
    binlogname = binlog_fname_buff;
  }

  if (newindexname[0] == '.' && optind < argc && FUNC29 (newindexname) + FUNC29 (argv[optind]) < 250) {
    FUNC27 (newindex_fname_buff, "%s%s", argv[optind], newindexname);
    newindexname = newindex_fname_buff;
  }

  if (verbosity > 0) {
    FUNC7 (stderr, "opening binlog file %s\n", binlogname);
  }
  FUNC17 (2, binlogname, -1);
  if (verbosity > 0) {
    FUNC7 (stderr, "binlog file %s opened %ld %d\n", binlogname, fsize[2], fd[2]);
  }

  log_ts_interval = 3;

  if (fsize[2] && fd[2] >= 0) {
    if (verbosity) {
      FUNC7 (stderr, "replaying binlog file %s (size %ld)\n", binlogname, fsize[2]);
    }
    binlog_load_time = FUNC16();

    FUNC2();
    FUNC26 (fd[2], fsize[2]);

    if (jump_log_pos) {
      if (verbosity) {
        FUNC7 (stderr, "log seek (jump_log_pos = %d, jump_log_ts = %d, jump_log_crc32 = %u)\n",
                jump_log_pos, jump_log_ts, jump_log_crc32);
      }

      FUNC14 (jump_log_pos, jump_log_ts, jump_log_crc32);
    }

    if (verbosity) {
      FUNC7 (stderr, "replay log events started\n");
    }

    i = FUNC22 (0, 1);

    if (verbosity) {
      FUNC7 (stderr, "replay log events finished\n");
    }

    binlog_load_time = FUNC16() - binlog_load_time;
    binlog_loaded_size = fsize[2];

    if (i < 0) {
      FUNC7 (stderr, "fatal: error reading binlog\n");
      FUNC6 (1);
    }

    if (verbosity) {
      FUNC7 (stderr, "replay binlog file: done, pos=%d, alloc_mem=%ld out of %ld, time %.6ds\n",
         log_pos, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
    }

    if (index_mode) {
      FUNC23 (newindexname);

      if (verbosity) {
        int len = FUNC15();
        stats_buff[len] = 0;
        FUNC7 (stderr, "%s\n", stats_buff);
      }

      FUNC8();
      return 0;
    }

    if (!binlog_disabled) {
      FUNC3();
      FUNC5 (fd[2]);
      fd[2] = -1;
    }
  }

  binlog_readed = 1;


  FUNC4();
  start_time = FUNC31 (NULL);

  if (suggname != NULL) {
    FUNC13 (suggname);
  }

  FUNC28();

  FUNC8();
  return 0;
}