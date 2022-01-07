
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tot_users; int log_split_mod; int log_split_max; int log_split_min; int log_pos1_crc32; int log_timestamp; int log_pos1; int created_at; int magic; } ;
typedef TYPE_1__ index_header ;
typedef int header ;
struct TYPE_9__ {int pr_tree; int req_time_tree; int req_tree; int fr_tree; TYPE_1__ req_cnt; TYPE_1__ user_id; } ;
struct TYPE_8__ {int replica_prefix; } ;


 int FRIEND_INDEX_MAGIC ;
 int MAX_USERS ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int REVERSE_FRIEND_INDEX_MAGIC ;
 TYPE_6__** User ;
 int assert (int) ;
 scalar_t__ close (scalar_t__) ;
 int dump_privacy_tree (int ) ;
 int dump_rev_friends (int ) ;
 int dump_tree (int ) ;
 TYPE_4__* engine_snapshot_replica ;
 int exit (int) ;
 int flushout () ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fsync (scalar_t__) ;
 char* get_new_snapshot_name (TYPE_4__*,int ,int ) ;
 int jump_log_pos ;
 int log_crc32_complement ;
 int log_cur_pos () ;
 int log_read_until ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ newidx_fd ;
 scalar_t__ open (char*,int,int) ;
 int print_snapshot_name (char*) ;
 int relax_log_crc32 (int ) ;
 int relax_write_log_crc32 () ;
 scalar_t__ rename_temporary_snapshot (char*) ;
 int rev_friends ;
 scalar_t__ reverse_friends_mode ;
 int stderr ;
 int time (int *) ;
 int tot_users ;
 int unlink (char*) ;
 int verbosity ;
 int write_seek (int ) ;
 int writeout (TYPE_1__*,int) ;
 int writeout_int (int) ;

int save_index (int writing_binlog) {
  char *newidxname = ((void*)0);

  if (engine_snapshot_replica) {
    newidxname = get_new_snapshot_name (engine_snapshot_replica, log_cur_pos(), engine_snapshot_replica->replica_prefix);
  }

  if (!newidxname || newidxname[0] == '-') {
    fprintf (stderr, "cannot write index: cannot compute its name\n");
    exit (1);
  }

  if (log_cur_pos() == jump_log_pos) {
    fprintf (stderr, "skipping generation of new snapshot %s for position %lld: snapshot for this position already exists\n",
       newidxname, jump_log_pos);
    return 0;
  }

  if (verbosity > 0) {
    fprintf (stderr, "creating index %s at log position %lld\n", newidxname, log_cur_pos());
  }

  newidx_fd = open (newidxname, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0660);

  if (newidx_fd < 0) {
    fprintf (stderr, "cannot create new index file %s: %m\n", newidxname);
    exit (1);
  }
  index_header header;
  memset (&header, 0, sizeof (header));

  if (!reverse_friends_mode) {
    header.magic = FRIEND_INDEX_MAGIC;
  } else {
    header.magic = REVERSE_FRIEND_INDEX_MAGIC;
  }
  header.created_at = time (((void*)0));
  header.log_pos1 = log_cur_pos ();
  header.log_timestamp = log_read_until;
  if (writing_binlog) {
    relax_write_log_crc32 ();
  } else {
    relax_log_crc32 (0);
  }
  header.log_pos1_crc32 = ~log_crc32_complement;
  header.log_split_min = log_split_min;
  header.log_split_max = log_split_max;
  header.log_split_mod = log_split_mod;
  header.tot_users = tot_users;

  write_seek (0);
  writeout (&header, sizeof (header));

  if (verbosity >= 2) {
    fprintf (stderr, "Written header\n");
  }

  int cc = 0;
  int i;
  for (i = 0; i < MAX_USERS; i++) {
    if (User[i]) {
      if (verbosity >= 3) {
        fprintf (stderr, "Writing user %d (real %d)\n", cc, i);
      }
      cc++;
      writeout_int (i);
      writeout (&User[i]->user_id, 8);
      writeout (&User[i]->req_cnt, 16 + 32 * 4);
      dump_tree (User[i]->fr_tree);
      if (!reverse_friends_mode) {
        dump_tree (User[i]->req_tree);
        dump_tree (User[i]->req_time_tree);
        dump_privacy_tree (User[i]->pr_tree);
      }
    }
  }
  assert (cc == tot_users);
  if (reverse_friends_mode) {
    dump_rev_friends (rev_friends);
  }
  flushout ();

  assert (fsync (newidx_fd) >= 0);
  assert (close (newidx_fd) >= 0);

  if (verbosity >= 3) {
    fprintf (stderr, "writing index done\n");
  }

  if (rename_temporary_snapshot (newidxname)) {
    fprintf (stderr, "cannot rename new index file from %s: %m\n", newidxname);
    unlink (newidxname);
    exit (1);
  }

  print_snapshot_name (newidxname);

  return 0;
}
