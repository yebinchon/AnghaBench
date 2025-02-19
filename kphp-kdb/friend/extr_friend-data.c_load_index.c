
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int user_t ;
typedef TYPE_1__* kfs_file_handle_t ;
struct TYPE_8__ {scalar_t__ magic; int tot_users; int log_split_mod; int log_split_max; int log_split_min; scalar_t__ log_pos1_crc32; scalar_t__ log_pos1; scalar_t__ log_timestamp; } ;
typedef TYPE_2__ index_header ;
struct TYPE_9__ {int pr_tree; void* req_time_tree; void* req_tree; void* fr_tree; int req_cnt; int user_id; } ;
struct TYPE_7__ {int fd; } ;


 scalar_t__ FRIEND_INDEX_MAGIC ;
 int MAX_USERS ;
 scalar_t__ REVERSE_FRIEND_INDEX_MAGIC ;
 TYPE_3__** User ;
 int assert (int) ;
 int clearin () ;
 int fprintf (int ,char*,...) ;
 int friends_replay_logevent ;
 int idx_fd ;
 scalar_t__ jump_log_crc32 ;
 scalar_t__ jump_log_pos ;
 scalar_t__ jump_log_ts ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 int memcpy (int *,scalar_t__,int) ;
 scalar_t__ rbytes ;
 int read (int ,TYPE_2__*,int) ;
 int read_privacy () ;
 int read_rev_friends () ;
 void* read_tree () ;
 int readadv (int) ;
 char* readin (int) ;
 int replay_logevent ;
 int rev_friends ;
 scalar_t__ reverse_friends_mode ;
 scalar_t__ rptr ;
 int stderr ;
 int tot_users ;
 int verbosity ;
 scalar_t__ wptr ;
 TYPE_3__* zmalloc0 (int) ;

int load_index (kfs_file_handle_t Index) {
  if (Index == ((void*)0)) {
    jump_log_ts = 0;
    jump_log_pos = 0;
    jump_log_crc32 = 0;
    return 0;
  }
  idx_fd = Index->fd;
  index_header header;
  assert (read (idx_fd, &header, sizeof (index_header)) == sizeof (index_header));
  if ((!reverse_friends_mode || header.magic != REVERSE_FRIEND_INDEX_MAGIC) &&
      (reverse_friends_mode || header.magic != FRIEND_INDEX_MAGIC)) {
    fprintf (stderr, "index file is not for friends-engine. Magic = %x.\n", header.magic);
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
  clearin ();
  long long fr_tree_bytes = 0;
  long long req_tree_bytes = 0;
  long long req_time_tree_bytes = 0;
  long long pr_tree_bytes = 0;
  for (i = 0; i < tot_users; i++) {
    if (verbosity >= 3) {
      fprintf (stderr, "reading user %d of %d\n", i + 1, tot_users);
    }
    char *ptr = readin (4 + 8 + 16 + 32 * 4);
    if (!ptr) {
      fprintf (stderr, "Unexpected end of file");
      assert (0);
    }
    int x = *((int *)ptr);
    readadv (4);
    ptr += 4;

    assert (x >= 0 && x < MAX_USERS);
    User[x] = zmalloc0 (sizeof (user_t));
    memcpy (&User[x]->user_id, rptr, 8);
    readadv (8);
    ptr += 8;

    memcpy (&User[x]->req_cnt, rptr, 16 + 32 * 4);
    readadv (16 + 32 * 4);
    ptr += 16 + 32 * 4;

    fr_tree_bytes -= rbytes;
    User[x]->fr_tree = read_tree ();
    fr_tree_bytes += rbytes;
    if (!reverse_friends_mode) {
      req_tree_bytes -= rbytes;
      User[x]->req_tree = read_tree ();
      req_tree_bytes += rbytes;
      req_time_tree_bytes -= rbytes;
      User[x]->req_time_tree = read_tree ();
      req_time_tree_bytes += rbytes;
      pr_tree_bytes -= rbytes;
      User[x]->pr_tree = read_privacy ();
      pr_tree_bytes += rbytes;
    }
  }
  if (reverse_friends_mode) {
    rev_friends = read_rev_friends ();
  }
  assert (rptr == wptr);
  replay_logevent = friends_replay_logevent;
  if (verbosity) {
    fprintf (stderr, "Index loaded. %lld bytes for friends, %lld for friend requests, %lld for time friend requests and %lld for privacy\n", fr_tree_bytes, req_tree_bytes, req_time_tree_bytes, pr_tree_bytes);
  }
  return 0;
}
