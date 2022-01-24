#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_t ;
typedef  TYPE_1__* kfs_file_handle_t ;
struct TYPE_8__ {scalar_t__ magic; int tot_users; int /*<<< orphan*/  log_split_mod; int /*<<< orphan*/  log_split_max; int /*<<< orphan*/  log_split_min; scalar_t__ log_pos1_crc32; scalar_t__ log_pos1; scalar_t__ log_timestamp; } ;
typedef  TYPE_2__ index_header ;
struct TYPE_9__ {int /*<<< orphan*/  pr_tree; void* req_time_tree; void* req_tree; void* fr_tree; int /*<<< orphan*/  req_cnt; int /*<<< orphan*/  user_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 scalar_t__ FRIEND_INDEX_MAGIC ; 
 int MAX_USERS ; 
 scalar_t__ REVERSE_FRIEND_INDEX_MAGIC ; 
 TYPE_3__** User ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  friends_replay_logevent ; 
 int /*<<< orphan*/  idx_fd ; 
 scalar_t__ jump_log_crc32 ; 
 scalar_t__ jump_log_pos ; 
 scalar_t__ jump_log_ts ; 
 int /*<<< orphan*/  log_split_max ; 
 int /*<<< orphan*/  log_split_min ; 
 int /*<<< orphan*/  log_split_mod ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ rbytes ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  replay_logevent ; 
 int /*<<< orphan*/  rev_friends ; 
 scalar_t__ reverse_friends_mode ; 
 scalar_t__ rptr ; 
 int /*<<< orphan*/  stderr ; 
 int tot_users ; 
 int verbosity ; 
 scalar_t__ wptr ; 
 TYPE_3__* FUNC10 (int) ; 

int FUNC11 (kfs_file_handle_t Index) {
  if (Index == NULL) {
    jump_log_ts = 0;
    jump_log_pos = 0;
    jump_log_crc32 = 0;
    return 0;
  }
  idx_fd = Index->fd;
  index_header header;
  FUNC0 (FUNC4 (idx_fd, &header, sizeof (index_header)) == sizeof (index_header));
  if ((!reverse_friends_mode || header.magic != REVERSE_FRIEND_INDEX_MAGIC) &&
      (reverse_friends_mode || header.magic != FRIEND_INDEX_MAGIC)) {
    FUNC2 (stderr, "index file is not for friends-engine. Magic = %lx.\n", header.magic);
    return -1;
  }
  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  log_split_min = header.log_split_min;
  log_split_max = header.log_split_max;
  log_split_mod = header.log_split_mod;

  tot_users = header.tot_users;
  int i;
  FUNC1 ();
  long long fr_tree_bytes = 0;
  long long req_tree_bytes = 0;
  long long req_time_tree_bytes = 0;
  long long pr_tree_bytes = 0; 
  for (i = 0; i < tot_users; i++) {
    if (verbosity >= 3) {
      FUNC2 (stderr, "reading user %d of %d\n", i + 1, tot_users);
    }
    char *ptr = FUNC9 (4 + 8 + 16 + 32 * 4);
    if (!ptr) {
      FUNC2 (stderr, "Unexpected end of file");
      FUNC0 (0);
    }
    int x = *((int *)ptr);
    FUNC8 (4);
    ptr += 4;

    FUNC0 (x >= 0 && x < MAX_USERS);
    User[x] = FUNC10 (sizeof (user_t));
    FUNC3 (&User[x]->user_id, rptr, 8);
    FUNC8 (8);
    ptr += 8;

    FUNC3 (&User[x]->req_cnt, rptr, 16 + 32 * 4);
    FUNC8 (16 + 32 * 4);
    ptr += 16 + 32 * 4;

    fr_tree_bytes -= rbytes;
    User[x]->fr_tree = FUNC7 ();
    fr_tree_bytes += rbytes;
    if (!reverse_friends_mode) {
      req_tree_bytes -= rbytes;
      User[x]->req_tree = FUNC7 ();
      req_tree_bytes += rbytes;
      req_time_tree_bytes -= rbytes;
      User[x]->req_time_tree = FUNC7 ();
      req_time_tree_bytes += rbytes;
      pr_tree_bytes -= rbytes;
      User[x]->pr_tree = FUNC5 ();
      pr_tree_bytes += rbytes;
    }
  }
  if (reverse_friends_mode) {
    rev_friends = FUNC6 ();
  }
  FUNC0 (rptr == wptr);
  replay_logevent = friends_replay_logevent;
  if (verbosity) {
    FUNC2 (stderr, "Index loaded. %lld bytes for friends, %lld for friend requests, %lld for time friend requests and %lld for privacy\n", fr_tree_bytes, req_tree_bytes, req_time_tree_bytes, pr_tree_bytes);
  }
  return 0;
}