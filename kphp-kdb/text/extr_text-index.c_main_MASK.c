#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct message {int dummy; } ;
struct buff_file {char* filename; int crc32; int /*<<< orphan*/  wpos; int /*<<< orphan*/  fd; } ;
struct TYPE_17__ {void* A; } ;
struct TYPE_16__ {char* replica_prefix; } ;
struct TYPE_15__ {TYPE_1__* info; } ;
struct TYPE_14__ {int /*<<< orphan*/  replica_prefix; } ;
struct TYPE_13__ {char* filename; int /*<<< orphan*/  file_size; } ;
struct TYPE_12__ {void* A; } ;

/* Variables and functions */
 TYPE_3__* Binlog ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int MAX_NONDICT_FREQ ; 
 int MAX_USER_MESSAGES ; 
 void* Messages ; 
 TYPE_10__ NotWords ; 
 int PRIME ; 
 TYPE_9__ Words ; 
 int /*<<< orphan*/  adjust_message ; 
 int /*<<< orphan*/  adjust_message0 ; 
 int /*<<< orphan*/  adjust_message1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  binlog_load_time ; 
 int binlog_loaded_size ; 
 scalar_t__ binlog_zipped ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  change_extra_mask ; 
 int /*<<< orphan*/  change_extra_mask0 ; 
 int /*<<< orphan*/  change_extra_mask1 ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int cur_max_uid ; 
 int cur_min_uid ; 
 int /*<<< orphan*/  delete_first_messages ; 
 int /*<<< orphan*/  delete_first_messages0 ; 
 int /*<<< orphan*/  delete_first_messages1 ; 
 scalar_t__ dyn_cur ; 
 scalar_t__ dyn_first ; 
 scalar_t__ dyn_last ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 long long dynamic_data_buffer_size ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 TYPE_4__* engine_replica ; 
 TYPE_2__* engine_snapshot_replica ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int force_pm ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 char* FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int,char**,char*) ; 
 int hashtags_enabled ; 
 int history_enabled ; 
 int ignore_delete_first_messages ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int last_global_id ; 
 int last_global_id0 ; 
 void* legacy_id_index ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int log_crc32_complement ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int log_limit_crc32 ; 
 int log_limit_pos ; 
 scalar_t__ log_pos ; 
 int log_readto_pos ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC30 (int) ; 
 int max_nd_freq ; 
 int max_uid ; 
 int msg_date_sort ; 
 char* newidxname ; 
 TYPE_3__* FUNC31 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int pass ; 
 int* pass_min_uid ; 
 int passes ; 
 void* peer_id_index ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int preserve_legacy_ids ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  process_message ; 
 int /*<<< orphan*/  process_message0 ; 
 int /*<<< orphan*/  process_message1 ; 
 char* progname ; 
 scalar_t__ FUNC40 (char*) ; 
 int /*<<< orphan*/  replace_message_text ; 
 int /*<<< orphan*/  replace_message_text0 ; 
 int /*<<< orphan*/  replace_message_text1 ; 
 int FUNC41 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  replay_logevent ; 
 int search_enabled ; 
 int searchtags_enabled ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC44 (void*,char*,long long*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC45 () ; 
 int FUNC46 (void*) ; 
 void* temp_binlog_directory ; 
 struct buff_file* temp_file ; 
 int /*<<< orphan*/  FUNC47 () ; 
 int /*<<< orphan*/  text_replay_logevent ; 
 int /*<<< orphan*/  text_split_replay_logevent ; 
 void* threshold_msg ; 
 int /*<<< orphan*/  FUNC48 () ; 
 int /*<<< orphan*/  FUNC49 (char*) ; 
 scalar_t__ FUNC50 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC51 () ; 
 int use_stemmer ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int word_split_utf8 ; 
 int /*<<< orphan*/  FUNC52 () ; 
 int /*<<< orphan*/  FUNC53 () ; 
 int /*<<< orphan*/  FUNC54 () ; 
 int /*<<< orphan*/  FUNC55 () ; 
 int /*<<< orphan*/  FUNC56 () ; 

int FUNC57 (int argc, char *argv[]) {
  int i;
  char c;
  long long x;

  FUNC42();

  progname = argv[0];
  while ((i = FUNC22 (argc, argv, "a:f:iStqspehu:mvyUGL:T:Z:")) != -1) {
    switch (i) {
    case 'e':
      passes = -1;
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC51 ();
      return 2;
    case 'u':
      username = optarg;
      break;
    case 'a':
      binlogname = optarg;
      break;
    case 'i':
      search_enabled = 1;
      break;
    case 'y':
      history_enabled = 1;
      break;
    case 's':
      msg_date_sort = 1;
      break;
    case 'S':
      use_stemmer = 1;
      break;
    case 'U':
      word_split_utf8 = 1;
      break;
    case 't':
      hashtags_enabled = 1;
      break;
    case 'q':
      searchtags_enabled = 1;
      break;
    case 'G':
      ignore_delete_first_messages = 1;
      break;
    case 'p':
      preserve_legacy_ids = 1;
      break;
    case 'f':
      max_nd_freq = FUNC1 (optarg);
      if (max_nd_freq < 0 || max_nd_freq > 100) {
        max_nd_freq = MAX_NONDICT_FREQ;
      }
      break;
    case 'm':
      force_pm = 1;
      break;
    case 'Z':
      c = 0;
      FUNC0 (FUNC44 (optarg, "%lld%c", &x, &c) >= 1);
      switch (c | 0x20) {
      case 'k':  x <<= 10; break;
      case 'm':  x <<= 20; break;
      case 'g':  x <<= 30; break;
      case 't':  x <<= 40; break;
      default: FUNC0 (c == 0x20);
      }
      if (x >= (1LL << 20) && x <= (sizeof(long) == 4 ? (3LL << 30) : (20LL << 30))) {
        dynamic_data_buffer_size = x;
      }
      break;
    case 'T':
      if (FUNC46 (optarg) < 120) {
	temp_binlog_directory = optarg;
      }
      break;
    case 'L':
      log_limit_pos = FUNC2 (optarg);
      break;
    }
  }
  if (argc != optind + 1 || (use_stemmer && !search_enabled)) {
    FUNC51();
    return 2;
  }

  if (FUNC4 (username) < 0) {
    FUNC18 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC16 (1);
  }

  if (!search_enabled) {
    hashtags_enabled = searchtags_enabled = 0;
  }

  FUNC24 ();
  if (hashtags_enabled) {
    FUNC12 ();
  }
  if (searchtags_enabled) {
    FUNC13 ();
  }
  FUNC25 ();
  if (use_stemmer) {
    FUNC45 ();
  }

  FUNC23();

  Messages = FUNC30 (sizeof (struct message *) * MAX_USER_MESSAGES);
  peer_id_index = FUNC30 (sizeof (int) * MAX_USER_MESSAGES * 2);
  legacy_id_index = FUNC30 (sizeof (int) * MAX_USER_MESSAGES * 3);
  FUNC0 (Messages && peer_id_index && legacy_id_index);

  Words.A = FUNC30 (PRIME * sizeof (void *));
  NotWords.A = FUNC30 (PRIME * sizeof (void *));
  FUNC0 (Words.A && NotWords.A);

  if (FUNC14 (argv[optind], binlogname) < 0) {
    FUNC18 (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC16 (1);
  }

  Binlog = FUNC31 (engine_replica, 0);
  if (!Binlog) {
    FUNC18 (stderr, "fatal: cannot find binlog for %s\n", engine_replica->replica_prefix);
    FUNC16 (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    FUNC18 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
  }

  binlog_load_time = FUNC21 (CLOCK_MONOTONIC);

  FUNC5();
  FUNC26 (0, 0, 0);

  process_message = process_message0;
  adjust_message = adjust_message0;
  change_extra_mask = change_extra_mask0;
  delete_first_messages = delete_first_messages0;
  replace_message_text = replace_message_text0;

  i = FUNC41 (0, 1);

  binlog_load_time = FUNC21 (CLOCK_MONOTONIC) - binlog_load_time;
  binlog_loaded_size = log_readto_pos;

  FUNC7 (Binlog, 1);

  FUNC0 (log_limit_pos < 0 || log_readto_pos == log_limit_pos);
  log_limit_pos = log_readto_pos;
  log_limit_crc32 = ~log_crc32_complement;
  last_global_id0 = last_global_id;

  if (i < 0) {
    FUNC18 (stderr, "fatal: error reading binlog\n");
    FUNC16 (1);
  }

  if (verbosity) {
      FUNC18 (stderr, "replay binlog file: done, pos=%lld, last_global_id=%d, alloc_mem=%ld out of %ld, time %.6ds\n", 
	       (long long) log_pos, last_global_id, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
  }

  if (search_enabled && verbosity > 0) {
    FUNC47 ();
  }

  FUNC35 ();
  FUNC9 ();
  FUNC3 ();

  if (passes < 0) {
    FUNC34 ();
    return 0;
  }

  passes = FUNC15 ();
  if (verbosity > 0) {
    FUNC18 (stderr, "%ld bytes available for indexing, will need %d passes\n", (long) (dyn_last - dyn_cur), passes);
  }

  if (engine_snapshot_replica) {
    FUNC0 (FUNC50 (engine_snapshot_replica, 1) > 0);
    newidxname = FUNC20 (engine_snapshot_replica, FUNC28(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    FUNC18 (stderr, "cannot write index: cannot compute its name\n");
    FUNC16 (1);
  }

  FUNC32 (0, newidxname, 1);
  FUNC0 (FUNC27 (fd[0], F_WRLCK) > 0);

  FUNC53 ();
  FUNC55 ();
  FUNC52 ();
  FUNC37 ();

  FUNC36 ();

  if (temp_binlog_directory) {
    if (verbosity > 0) {
      FUNC18 (stderr, "running splitting pass to create temporary files\n");
    }

    Binlog = FUNC31 (engine_replica, 0);
    if (!Binlog) {
      FUNC18 (stderr, "fatal: cannot find binlog for %s\n", engine_replica->replica_prefix);
      FUNC16 (1);
    }

    binlogname = Binlog->info->filename;

    if (verbosity) {
      FUNC18 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
    }

    FUNC10 (0);
    FUNC33 ();

    FUNC5();
    FUNC26 (0, 0, 0);
    replay_logevent = text_split_replay_logevent;
    last_global_id = 0;

    binlog_load_time = FUNC21(CLOCK_MONOTONIC);

    i = FUNC41 (0, 1);

    binlog_load_time = FUNC21(CLOCK_MONOTONIC) - binlog_load_time;
    replay_logevent = text_replay_logevent;

    if (i < 0) {
      FUNC18 (stderr, "fatal: error reading binlog\n");
      FUNC16 (1);
    }
    if (verbosity) {
        FUNC18 (stderr, "replay binlog file (pass %d): done, alloc_mem=%ld out of %ld, time %.6ds\n", 
	         pass, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
    }

    FUNC7 (Binlog, 1);
    Binlog = 0;

    if (last_global_id != last_global_id0) {
      FUNC18 (stderr, "last global id mismatch: original pass %d, current pass %d\n", last_global_id0, last_global_id);
    }
    FUNC0 (log_limit_crc32 == ~log_crc32_complement && last_global_id == last_global_id0);

    FUNC48 ();

    FUNC11 (0);
  }

  for (pass = 1; pass <= passes; pass++) {
    struct buff_file *T = 0;
    cur_min_uid = pass_min_uid[pass - 1];
    cur_max_uid = pass_min_uid[pass];
    if (verbosity > 0) {
      FUNC34 ();
      FUNC18 (stderr, "starting pass #%d, uid %d..%d\n", pass, cur_min_uid, cur_max_uid);
    }

    if (!temp_binlog_directory) {
      Binlog = FUNC31 (engine_replica, 0);
      if (!Binlog) {
	FUNC18 (stderr, "fatal: cannot find binlog for %s\n", engine_replica->replica_prefix);
	FUNC16 (1);
      }

      binlogname = Binlog->info->filename;

      if (verbosity) {
	FUNC18 (stderr, "replaying binlog file %s (size %d)\n", binlogname, Binlog->info->file_size);
      }
      FUNC5 ();
      FUNC26 (0, 0, 0);
    } else {
      T = &temp_file[pass - 1];
      FUNC5 ();
      binlog_zipped = 0;
      binlogname = T->filename;
      FUNC43 (T->fd, T->wpos);
      FUNC29 (0, 0, 0);
      log_limit_pos = -1;
    }

    FUNC10 (0);

    last_global_id = 0;
    threshold_msg = (void *) -1;

    process_message = process_message1;
    adjust_message = adjust_message1;
    change_extra_mask = change_extra_mask1;
    delete_first_messages = delete_first_messages1;
    replace_message_text = replace_message_text1;

    binlog_load_time = FUNC21(CLOCK_MONOTONIC);

    i = FUNC41 (0, 1);

    binlog_load_time = FUNC21(CLOCK_MONOTONIC) - binlog_load_time;

    if (i < 0) {
      FUNC18 (stderr, "fatal: error reading binlog\n");
      FUNC8 (3);
      FUNC16 (1);
    }
    if (verbosity) {
        FUNC18 (stderr, "replay binlog file %s (pass %d): done, alloc_mem=%ld out of %ld, time %.6ds\n", 
	         binlogname, pass, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
    }

    if (!temp_binlog_directory) {
      FUNC7 (Binlog, 1);
      FUNC0 (log_limit_crc32 == ~log_crc32_complement);
    } else {
      FUNC0 (T->crc32 = ~log_crc32_complement);
    }

    FUNC39 ();

    FUNC11 (0);

    if (last_global_id != last_global_id0) {
      FUNC18 (stderr, "last global id mismatch: original pass %d, current pass %d\n", last_global_id0, last_global_id);
    }
    FUNC0 (last_global_id == last_global_id0);

    /*
    if (cur_max_uid <= max_uid && pass == passes && extra_passes < 3) {
      fprintf (stderr, "WARNING: last pass #%d processed %d..%d, but max_uid=%d; scheduling extra pass\n", passes, cur_min_uid, cur_max_uid - 1, max_uid);
      passes++;
      extra_passes++;
    }
    */
  }

  if (temp_binlog_directory) {
    FUNC8 (3);
  }

  FUNC0 (cur_max_uid == max_uid + 1);

  FUNC56 ();
  FUNC54 ();

  FUNC17 ();

  FUNC0 (FUNC19(fd[0]) >= 0);
  FUNC6 (fd[0]);

  if (FUNC40 (newidxname)) {
    FUNC18 (stderr, "cannot rename new index file from %s: %m\n", newidxname);
    FUNC49 (newidxname);
    FUNC16 (1);
  }

  if (verbosity > 0) {
    FUNC34();
  }

  FUNC38 (newidxname);

  return 0;
}