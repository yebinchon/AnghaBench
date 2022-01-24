#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tot_users; int /*<<< orphan*/  log_split_mod; int /*<<< orphan*/  log_split_max; int /*<<< orphan*/  log_split_min; int /*<<< orphan*/  log_pos1_crc32; int /*<<< orphan*/  log_timestamp; int /*<<< orphan*/  log_pos1; int /*<<< orphan*/  created_at; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ index_header ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_9__ {int /*<<< orphan*/  pr_tree; int /*<<< orphan*/  req_time_tree; int /*<<< orphan*/  req_tree; int /*<<< orphan*/  fr_tree; TYPE_1__ req_cnt; TYPE_1__ user_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  replica_prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRIEND_INDEX_MAGIC ; 
 int MAX_USERS ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  REVERSE_FRIEND_INDEX_MAGIC ; 
 TYPE_6__** User ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* engine_snapshot_replica ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 char* FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int /*<<< orphan*/  log_crc32_complement ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  log_read_until ; 
 int /*<<< orphan*/  log_split_max ; 
 int /*<<< orphan*/  log_split_min ; 
 int /*<<< orphan*/  log_split_mod ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ newidx_fd ; 
 scalar_t__ FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (char*) ; 
 int /*<<< orphan*/  rev_friends ; 
 scalar_t__ reverse_friends_mode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int tot_users ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

int FUNC22 (int writing_binlog) {
  char *newidxname = NULL;

  if (engine_snapshot_replica) {
    newidxname = FUNC9 (engine_snapshot_replica, FUNC10(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    FUNC7 (stderr, "cannot write index: cannot compute its name\n");
    FUNC5 (1);
  }

  if (FUNC10() == jump_log_pos) {
    FUNC7 (stderr, "skipping generation of new snapshot %s for position %d: snapshot for this position already exists\n",
       newidxname, jump_log_pos);
    return 0;
  } 

  if (verbosity > 0) {
    FUNC7 (stderr, "creating index %s at log position %d\n", newidxname, FUNC10());
  }

  newidx_fd = FUNC12 (newidxname, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);

  if (newidx_fd < 0) {
    FUNC7 (stderr, "cannot create new index file %s: %m\n", newidxname);
    FUNC5 (1);
  }
  index_header header;
  FUNC11 (&header, 0, sizeof (header));

  if (!reverse_friends_mode) {
    header.magic = FRIEND_INDEX_MAGIC;
  } else {
    header.magic = REVERSE_FRIEND_INDEX_MAGIC;
  }
  header.created_at = FUNC17 (NULL);
  header.log_pos1 = FUNC10 ();
  header.log_timestamp = log_read_until;
  if (writing_binlog) {
    FUNC15 ();
  } else {
    FUNC14 (0);
  }
  header.log_pos1_crc32 = ~log_crc32_complement;
  header.log_split_min = log_split_min;
  header.log_split_max = log_split_max;
  header.log_split_mod = log_split_mod;
  header.tot_users = tot_users;

  FUNC19 (0);
  FUNC20 (&header, sizeof (header));

  if (verbosity >= 2) {
    FUNC7 (stderr, "Written header\n");
  }

  int cc = 0;
  int i;
  for (i = 0; i < MAX_USERS; i++) {
    if (User[i]) {
      if (verbosity >= 3) {
        FUNC7 (stderr, "Writing user %d (real %d)\n", cc, i);
      }
      cc++;
      FUNC21 (i);
      FUNC20 (&User[i]->user_id, 8);
      FUNC20 (&User[i]->req_cnt, 16 + 32 * 4);
      FUNC4 (User[i]->fr_tree);
      if (!reverse_friends_mode) {
        FUNC4 (User[i]->req_tree);
        FUNC4 (User[i]->req_time_tree);
        FUNC2 (User[i]->pr_tree);
      }
    }
  }
  FUNC0 (cc == tot_users);
  if (reverse_friends_mode) {
    FUNC3 (rev_friends);
  }
  FUNC6 ();

  FUNC0 (FUNC8 (newidx_fd) >= 0);
  FUNC0 (FUNC1 (newidx_fd) >= 0);

  if (verbosity >= 3) {
    FUNC7 (stderr, "writing index done\n");
  }

  if (FUNC16 (newidxname)) {
    FUNC7 (stderr, "cannot rename new index file from %s: %m\n", newidxname);
    FUNC18 (newidxname);
    FUNC5 (1);
  }

  FUNC13 (newidxname);

  return 0;
}