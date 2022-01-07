
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct message {int dummy; } ;
struct buff_file {char* filename; int crc32; int wpos; int fd; } ;
struct TYPE_17__ {void* A; } ;
struct TYPE_16__ {char* replica_prefix; } ;
struct TYPE_15__ {TYPE_1__* info; } ;
struct TYPE_14__ {int replica_prefix; } ;
struct TYPE_13__ {char* filename; int file_size; } ;
struct TYPE_12__ {void* A; } ;


 TYPE_3__* Binlog ;
 int CLOCK_MONOTONIC ;
 int F_WRLCK ;
 int MAX_NONDICT_FREQ ;
 int MAX_USER_MESSAGES ;
 void* Messages ;
 TYPE_10__ NotWords ;
 int PRIME ;
 TYPE_9__ Words ;
 int adjust_message ;
 int adjust_message0 ;
 int adjust_message1 ;
 int assert (int) ;
 int atoi (void*) ;
 int atoll (void*) ;
 int binlog_load_time ;
 int binlog_loaded_size ;
 scalar_t__ binlog_zipped ;
 char* binlogname ;
 int build_model () ;
 int change_extra_mask ;
 int change_extra_mask0 ;
 int change_extra_mask1 ;
 scalar_t__ change_user (char*) ;
 int clear_log () ;
 int close (int ) ;
 int close_binlog (TYPE_3__*,int) ;
 int close_temp_files (int) ;
 int count_sublists () ;
 int cur_max_uid ;
 int cur_min_uid ;
 int delete_first_messages ;
 int delete_first_messages0 ;
 int delete_first_messages1 ;
 scalar_t__ dyn_cur ;
 scalar_t__ dyn_first ;
 scalar_t__ dyn_last ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 long long dynamic_data_buffer_size ;
 int enable_is_letter_sigils () ;
 int enable_search_tag_sigil () ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_4__* engine_replica ;
 TYPE_2__* engine_snapshot_replica ;
 int estimate_needed_passes () ;
 int exit (int) ;
 int * fd ;
 int flushout () ;
 int force_pm ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fsync (int ) ;
 char* get_new_snapshot_name (TYPE_2__*,int ,int ) ;
 int get_utime (int ) ;
 int getopt (int,char**,char*) ;
 int hashtags_enabled ;
 int history_enabled ;
 int ignore_delete_first_messages ;
 int init_dyn_data () ;
 int init_is_letter () ;
 int init_letter_freq () ;
 int init_log_data (int ,int ,int ) ;
 int last_global_id ;
 int last_global_id0 ;
 void* legacy_id_index ;
 scalar_t__ lock_whole_file (int ,int ) ;
 int log_crc32_complement ;
 int log_cur_pos () ;
 int log_limit_crc32 ;
 int log_limit_pos ;
 scalar_t__ log_pos ;
 int log_readto_pos ;
 int log_seek (int ,int ,int ) ;
 void* malloc (int) ;
 int max_nd_freq ;
 int max_uid ;
 int msg_date_sort ;
 char* newidxname ;
 TYPE_3__* open_binlog (TYPE_4__*,int ) ;
 int open_file (int ,char*,int) ;
 int open_temp_files () ;
 void* optarg ;
 int optind ;
 int output_stats () ;
 int pass ;
 int* pass_min_uid ;
 int passes ;
 void* peer_id_index ;
 int prepare_extra_mask () ;
 int prepare_pass_splitting () ;
 int prepare_user_directory () ;
 int preserve_legacy_ids ;
 int print_snapshot_name (char*) ;
 int process_loaded_messages () ;
 int process_message ;
 int process_message0 ;
 int process_message1 ;
 char* progname ;
 scalar_t__ rename_temporary_snapshot (char*) ;
 int replace_message_text ;
 int replace_message_text0 ;
 int replace_message_text1 ;
 int replay_log (int ,int) ;
 int replay_logevent ;
 int search_enabled ;
 int searchtags_enabled ;
 int set_debug_handlers () ;
 int set_log_data (int ,int ) ;
 int sscanf (void*,char*,long long*,char*) ;
 int stderr ;
 int stem_init () ;
 int strlen (void*) ;
 void* temp_binlog_directory ;
 struct buff_file* temp_file ;
 int test_word_hashes () ;
 int text_replay_logevent ;
 int text_split_replay_logevent ;
 void* threshold_msg ;
 int tmp_flush_all () ;
 int unlink (char*) ;
 scalar_t__ update_replica (TYPE_2__*,int) ;
 int usage () ;
 int use_stemmer ;
 char* username ;
 scalar_t__ verbosity ;
 int word_split_utf8 ;
 int write_dictionaries () ;
 int write_header0 () ;
 int write_header1 () ;
 int write_sublists_descr () ;
 int write_user_directory () ;

int main (int argc, char *argv[]) {
  int i;
  char c;
  long long x;

  set_debug_handlers();

  progname = argv[0];
  while ((i = getopt (argc, argv, "a:f:iStqspehu:mvyUGL:T:Z:")) != -1) {
    switch (i) {
    case 'e':
      passes = -1;
    case 'v':
      verbosity++;
      break;
    case 'h':
      usage ();
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
      max_nd_freq = atoi (optarg);
      if (max_nd_freq < 0 || max_nd_freq > 100) {
        max_nd_freq = MAX_NONDICT_FREQ;
      }
      break;
    case 'm':
      force_pm = 1;
      break;
    case 'Z':
      c = 0;
      assert (sscanf (optarg, "%lld%c", &x, &c) >= 1);
      switch (c | 0x20) {
      case 'k': x <<= 10; break;
      case 'm': x <<= 20; break;
      case 'g': x <<= 30; break;
      case 't': x <<= 40; break;
      default: assert (c == 0x20);
      }
      if (x >= (1LL << 20) && x <= (sizeof(long) == 4 ? (3LL << 30) : (20LL << 30))) {
        dynamic_data_buffer_size = x;
      }
      break;
    case 'T':
      if (strlen (optarg) < 120) {
 temp_binlog_directory = optarg;
      }
      break;
    case 'L':
      log_limit_pos = atoll (optarg);
      break;
    }
  }
  if (argc != optind + 1 || (use_stemmer && !search_enabled)) {
    usage();
    return 2;
  }

  if (change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  if (!search_enabled) {
    hashtags_enabled = searchtags_enabled = 0;
  }

  init_is_letter ();
  if (hashtags_enabled) {
    enable_is_letter_sigils ();
  }
  if (searchtags_enabled) {
    enable_search_tag_sigil ();
  }
  init_letter_freq ();
  if (use_stemmer) {
    stem_init ();
  }

  init_dyn_data();

  Messages = malloc (sizeof (struct message *) * MAX_USER_MESSAGES);
  peer_id_index = malloc (sizeof (int) * MAX_USER_MESSAGES * 2);
  legacy_id_index = malloc (sizeof (int) * MAX_USER_MESSAGES * 3);
  assert (Messages && peer_id_index && legacy_id_index);

  Words.A = malloc (PRIME * sizeof (void *));
  NotWords.A = malloc (PRIME * sizeof (void *));
  assert (Words.A && NotWords.A);

  if (engine_preload_filelist (argv[optind], binlogname) < 0) {
    fprintf (stderr, "cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }

  Binlog = open_binlog (engine_replica, 0);
  if (!Binlog) {
    fprintf (stderr, "fatal: cannot find binlog for %s\n", engine_replica->replica_prefix);
    exit (1);
  }

  binlogname = Binlog->info->filename;

  if (verbosity) {
    fprintf (stderr, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
  }

  binlog_load_time = get_utime (CLOCK_MONOTONIC);

  clear_log();
  init_log_data (0, 0, 0);

  process_message = process_message0;
  adjust_message = adjust_message0;
  change_extra_mask = change_extra_mask0;
  delete_first_messages = delete_first_messages0;
  replace_message_text = replace_message_text0;

  i = replay_log (0, 1);

  binlog_load_time = get_utime (CLOCK_MONOTONIC) - binlog_load_time;
  binlog_loaded_size = log_readto_pos;

  close_binlog (Binlog, 1);

  assert (log_limit_pos < 0 || log_readto_pos == log_limit_pos);
  log_limit_pos = log_readto_pos;
  log_limit_crc32 = ~log_crc32_complement;
  last_global_id0 = last_global_id;

  if (i < 0) {
    fprintf (stderr, "fatal: error reading binlog\n");
    exit (1);
  }

  if (verbosity) {
      fprintf (stderr, "replay binlog file: done, pos=%lld, last_global_id=%d, alloc_mem=%ld out of %ld, time %.06lfs\n",
        (long long) log_pos, last_global_id, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
  }

  if (search_enabled && verbosity > 0) {
    test_word_hashes ();
  }

  prepare_extra_mask ();
  count_sublists ();
  build_model ();

  if (passes < 0) {
    output_stats ();
    return 0;
  }

  passes = estimate_needed_passes ();
  if (verbosity > 0) {
    fprintf (stderr, "%ld bytes available for indexing, will need %d passes\n", (long) (dyn_last - dyn_cur), passes);
  }

  if (engine_snapshot_replica) {
    assert (update_replica (engine_snapshot_replica, 1) > 0);
    newidxname = get_new_snapshot_name (engine_snapshot_replica, log_cur_pos(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    fprintf (stderr, "cannot write index: cannot compute its name\n");
    exit (1);
  }

  open_file (0, newidxname, 1);
  assert (lock_whole_file (fd[0], F_WRLCK) > 0);

  write_header0 ();
  write_sublists_descr ();
  write_dictionaries ();
  prepare_user_directory ();

  prepare_pass_splitting ();

  if (temp_binlog_directory) {
    if (verbosity > 0) {
      fprintf (stderr, "running splitting pass to create temporary files\n");
    }

    Binlog = open_binlog (engine_replica, 0);
    if (!Binlog) {
      fprintf (stderr, "fatal: cannot find binlog for %s\n", engine_replica->replica_prefix);
      exit (1);
    }

    binlogname = Binlog->info->filename;

    if (verbosity) {
      fprintf (stderr, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
    }

    dyn_mark (0);
    open_temp_files ();

    clear_log();
    init_log_data (0, 0, 0);
    replay_logevent = text_split_replay_logevent;
    last_global_id = 0;

    binlog_load_time = get_utime(CLOCK_MONOTONIC);

    i = replay_log (0, 1);

    binlog_load_time = get_utime(CLOCK_MONOTONIC) - binlog_load_time;
    replay_logevent = text_replay_logevent;

    if (i < 0) {
      fprintf (stderr, "fatal: error reading binlog\n");
      exit (1);
    }
    if (verbosity) {
        fprintf (stderr, "replay binlog file (pass %d): done, alloc_mem=%ld out of %ld, time %.06lfs\n",
          pass, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
    }

    close_binlog (Binlog, 1);
    Binlog = 0;

    if (last_global_id != last_global_id0) {
      fprintf (stderr, "last global id mismatch: original pass %d, current pass %d\n", last_global_id0, last_global_id);
    }
    assert (log_limit_crc32 == ~log_crc32_complement && last_global_id == last_global_id0);

    tmp_flush_all ();

    dyn_release (0);
  }

  for (pass = 1; pass <= passes; pass++) {
    struct buff_file *T = 0;
    cur_min_uid = pass_min_uid[pass - 1];
    cur_max_uid = pass_min_uid[pass];
    if (verbosity > 0) {
      output_stats ();
      fprintf (stderr, "starting pass #%d, uid %d..%d\n", pass, cur_min_uid, cur_max_uid);
    }

    if (!temp_binlog_directory) {
      Binlog = open_binlog (engine_replica, 0);
      if (!Binlog) {
 fprintf (stderr, "fatal: cannot find binlog for %s\n", engine_replica->replica_prefix);
 exit (1);
      }

      binlogname = Binlog->info->filename;

      if (verbosity) {
 fprintf (stderr, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);
      }
      clear_log ();
      init_log_data (0, 0, 0);
    } else {
      T = &temp_file[pass - 1];
      clear_log ();
      binlog_zipped = 0;
      binlogname = T->filename;
      set_log_data (T->fd, T->wpos);
      log_seek (0, 0, 0);
      log_limit_pos = -1;
    }

    dyn_mark (0);

    last_global_id = 0;
    threshold_msg = (void *) -1;

    process_message = process_message1;
    adjust_message = adjust_message1;
    change_extra_mask = change_extra_mask1;
    delete_first_messages = delete_first_messages1;
    replace_message_text = replace_message_text1;

    binlog_load_time = get_utime(CLOCK_MONOTONIC);

    i = replay_log (0, 1);

    binlog_load_time = get_utime(CLOCK_MONOTONIC) - binlog_load_time;

    if (i < 0) {
      fprintf (stderr, "fatal: error reading binlog\n");
      close_temp_files (3);
      exit (1);
    }
    if (verbosity) {
        fprintf (stderr, "replay binlog file %s (pass %d): done, alloc_mem=%ld out of %ld, time %.06lfs\n",
          binlogname, pass, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
    }

    if (!temp_binlog_directory) {
      close_binlog (Binlog, 1);
      assert (log_limit_crc32 == ~log_crc32_complement);
    } else {
      assert (T->crc32 = ~log_crc32_complement);
    }

    process_loaded_messages ();

    dyn_release (0);

    if (last_global_id != last_global_id0) {
      fprintf (stderr, "last global id mismatch: original pass %d, current pass %d\n", last_global_id0, last_global_id);
    }
    assert (last_global_id == last_global_id0);
  }

  if (temp_binlog_directory) {
    close_temp_files (3);
  }

  assert (cur_max_uid == max_uid + 1);

  write_user_directory ();
  write_header1 ();

  flushout ();

  assert (fsync(fd[0]) >= 0);
  close (fd[0]);

  if (rename_temporary_snapshot (newidxname)) {
    fprintf (stderr, "cannot rename new index file from %s: %m\n", newidxname);
    unlink (newidxname);
    exit (1);
  }

  if (verbosity > 0) {
    output_stats();
  }

  print_snapshot_name (newidxname);

  return 0;
}
