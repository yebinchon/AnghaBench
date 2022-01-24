#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  userlist_entry_t ;
struct TYPE_6__ {int user_id; scalar_t__ list_cnt; scalar_t__ hash_cnt; int /*<<< orphan*/  magic; } ;
struct TYPE_5__ {int delmsg_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ CurH ; 
 scalar_t__ CurL ; 
 int DEFAULT_CUTOFF_SECONDS ; 
 int /*<<< orphan*/  FILE_BUFFER_SIZE ; 
 int /*<<< orphan*/  MAIL_INDEX_BLOCK_MAGIC ; 
 unsigned int MAX_USER_ID ; 
 int M_cnt ; 
 int /*<<< orphan*/ * MetaB ; 
 int /*<<< orphan*/ ** MetaP ; 
 int PRIME ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_4__ User ; 
 TYPE_1__* UserMod ; 
 TYPE_1__** UserModHeaders ; 
 int* Users ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 scalar_t__ binlog_load_time ; 
 scalar_t__ binlog_loaded_size ; 
 void* binlog_suffix ; 
 char* binlogname ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int cutoff_seconds ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ dyn_cur ; 
 scalar_t__ dyn_first ; 
 scalar_t__ dyn_last ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__* fd ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char** fnames ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int* fsize ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ log_cutoff_pos ; 
 scalar_t__ log_pos ; 
 scalar_t__ log_wpos ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 void* metaindex_suffix ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 char* new_logname ; 
 char* new_metaindexname ; 
 int now ; 
 int /*<<< orphan*/ * obuff ; 
 char* old_logname ; 
 int /*<<< orphan*/  FUNC17 (int,char*,int) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC18 () ; 
 char* progname ; 
 int purged_msgs_cnt ; 
 int FUNC19 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 scalar_t__ rpos ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,char*,void*) ; 
 int start_time ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 char* username ; 
 int /*<<< orphan*/  users_added ; 
 int /*<<< orphan*/  users_dropped ; 
 int verbosity ; 
 scalar_t__ wpos ; 
 int FUNC25 (scalar_t__,int /*<<< orphan*/ *,int) ; 

int FUNC26 (int argc, char *argv[]) {
  int i;

  progname = argv[0];
  while ((i = FUNC12 (argc, argv, "hvu:c:a:i:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
      break;
    case 'h':
      FUNC24();
      return 2;
    case 'u':
      username = optarg;
      break;
    case 'a':
      binlog_suffix = optarg;
      break;
    case 'i':
      metaindex_suffix = optarg;
      break;
    case 'c':
      cutoff_seconds = FUNC1(optarg);
      if (cutoff_seconds > 1000000 || cutoff_seconds < 0) {
	cutoff_seconds = DEFAULT_CUTOFF_SECONDS;
      }
    }
  }
  if (argc != optind + 2) {
    FUNC24();
    return 2;
  }

  if (username && FUNC2(username) < 0) {
    FUNC10 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC8(1);
  }

  FUNC17 (0, argv[optind], 0);
  FUNC22 (old_logname, 254, "%s%s", argv[optind], binlog_suffix);
  binlogname = old_logname;
  FUNC17 (1, old_logname, 0);

  FUNC17 (2, argv[optind+1], 1);
  if (fsize[2]) {
    FUNC10 (stderr, "new huge index file %s already exists and is not empty\n", fnames[2]);
    return 1;
  }

  FUNC22 (new_logname, 254, "%s%s", argv[optind+1], binlog_suffix);
  FUNC17 (3, new_logname, 1);
  if (fsize[3]) {
    FUNC10 (stderr, "new binlog file %s already exists and is not empty\n", fnames[3]);
    return 1;
  }

  FUNC22 (new_metaindexname, 254, "%s%s", argv[optind+1], metaindex_suffix);
  FUNC17 (4, new_metaindexname, 1);
  if (fsize[4]) {
    FUNC10 (stderr, "new metaindex file %s already exists and is not empty\n", fnames[4]);
    return 1;
  }

  FUNC13();

  start_time = now = FUNC23(0);

  if (fsize[1] && fd[1]) {
    if (verbosity) {
      FUNC10 (stderr, "replaying binlog file %s (size %d), cutoff time=%d\n", binlogname, fsize[1], start_time - cutoff_seconds);
    }
    binlog_load_time = FUNC11(CLOCK_MONOTONIC);

    FUNC3 ();
    FUNC21 (fd[1], fsize[1]);
    FUNC20 (start_time - cutoff_seconds);

    binlog_load_time = FUNC11(CLOCK_MONOTONIC) - binlog_load_time;
    binlog_loaded_size = log_pos;

    if (log_cutoff_pos < 0) {
      log_cutoff_pos = log_pos;
    }

    if (verbosity) {
      FUNC10 (stderr, "replay binlog file: done, pos=%lld, cutoff_pos=%lld, alloc_mem=%ld out of %ld, time %.6lds\n", 
	       (long long) log_pos, (long long) log_cutoff_pos, (long) (dyn_cur - dyn_first), (long) (dyn_last - dyn_first), binlog_load_time);
    }
  }

  FUNC3();
  FUNC6();

  if (verbosity) {
    FUNC10 (stderr, "purged %d recently added and deleted messages\n", purged_msgs_cnt);
    FUNC10 (stderr, "scanning data file \"%s\", size=%d\n", fnames[0], fsize[0]);
  }

  while (FUNC14() > 0) {
    if (User.user_id && (unsigned) User.user_id < MAX_USER_ID) {
      UserMod = FUNC7 (User.user_id, 0);
      if (UserMod && UserMod->delmsg_cnt == -239) {
	FUNC10 (stderr, "duplicate user id %d in file %s at position %lld\n", User.user_id, fnames[0], (long long) rpos);
      } else {
	// fprintf (stderr, "processing user %ld\n", User.user_id);
	FUNC5 ();
	if (UserMod) {
	  UserMod->delmsg_cnt = -239;
	}
      }
    } else {
      users_dropped++;
      FUNC10 (stderr, "dropping messages of user %d (user_id out of bounds)\n", User.user_id);
    }
  }

  if (verbosity) {
    FUNC10 (stderr, "scanning new users...\n");
  }

  User.magic = MAIL_INDEX_BLOCK_MAGIC;

  for (i = 0; i < PRIME; i++) {
    UserMod = UserModHeaders[i];
    if (UserMod && UserMod->delmsg_cnt != -239) {
      User.user_id = Users[i];
      users_added++;
      if (User.user_id && (unsigned) User.user_id < MAX_USER_ID) {
	User.hash_cnt = User.list_cnt = 0;
	CurH = 0;
	CurL = 0;
	if (verbosity > 1) {
	  FUNC10 (stderr, "adding new user %d\n", User.user_id);
	}
	FUNC5 ();
      } else {
	users_dropped++;
	FUNC10 (stderr, "ignoring messages of new user %d (user_id out of bounds)\n", User.user_id);
      }
    }
  }
 
  FUNC9();

  if (verbosity) {
    FUNC10 (stderr, "file %s created, total size %lld\n", fnames[2], (long long) wpos);
  }
  FUNC4 (fd[2]);

  FUNC16 (0, M_cnt - 1);

  for (i = 0; i < M_cnt; i++) {
    MetaB[i] = *MetaP[i];
  }
  i = FUNC25 (fd[4], MetaB, M_cnt * sizeof(userlist_entry_t));
  FUNC0 (i == M_cnt * sizeof(userlist_entry_t));
  FUNC4 (fd[4]);

  if (verbosity) {
    FUNC10 (stderr, "%d userlist entries (%ld bytes) written to %s\n", M_cnt, (long)M_cnt*sizeof(userlist_entry_t), fnames[4]);
  }

  FUNC0 (FUNC15 (fd[1], log_cutoff_pos, SEEK_SET) >= 0);
  do {
    i = FUNC19(fd[1], obuff, FILE_BUFFER_SIZE);
    FUNC0 (FUNC25 (fd[3], obuff, i) == i);
    log_wpos += i;
  } while (i);
  FUNC4 (fd[3]);

  if (verbosity) {
    FUNC10 (stderr, "%lld bytes copied from old binlog %s, position %lld to new binlog %s\n", (long long) log_wpos, fnames[1], (long long) log_cutoff_pos, fnames[3]);
    FUNC18();
  }

  return 0;
}