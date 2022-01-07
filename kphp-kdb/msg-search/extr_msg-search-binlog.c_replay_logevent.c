
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_event {int type; int user_id; int msg_id; } ;
typedef int hash_t ;




 unsigned int LE_NEWMSG_MAGIC ;
 unsigned int LE_NEWMSG_MAGIC_MAX ;



 int assert (int *) ;
 int * dyn_alloc_new_msg (int,int ,int) ;
 int dyn_delall_msg (int ,int ) ;
 int dyn_delete_msg (int ,int ) ;
 int dyn_undelete_msg (int ,int ) ;
 int dyn_user_header (int,int) ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__ log_cutoff_pos ;
 int log_first_ts ;
 int log_pos ;
 int log_read_until ;
 int log_scan_mode ;
 int log_time_cutoff ;
 int memcpy (int *,char*,int) ;
 int stderr ;
 int verbosity ;

int replay_logevent (struct log_event *E, int size) {
  int l = E->type - LE_NEWMSG_MAGIC;
  hash_t *p;

  if (size < 4) { return -2; }

  if ((unsigned) l < LE_NEWMSG_MAGIC_MAX - LE_NEWMSG_MAGIC) {
    if (size < l * 8 + 12) { return -1; }
    if (!log_scan_mode) {
      p = dyn_alloc_new_msg (E->user_id, E->msg_id, l);
      assert (p);
      memcpy (p, ((char *) E) + 12, l * 8);
    }
    return l * 8 + 12;
  }

  switch (E->type) {
  case 130:
    return 4;
  case 132:
    if (size < 12) { return -2; }
    if (!log_scan_mode) {
      dyn_delete_msg (dyn_user_header (E->user_id, 1), E->msg_id);
    }
    return 12;
  case 128:
    if (size < 12) { return -2; }
    dyn_undelete_msg (dyn_user_header (E->user_id, 1), E->msg_id);
    return 12;
  case 131:
    if (size < 12) { return -2; }
    dyn_delall_msg (dyn_user_header (E->user_id, 1), E->msg_id);
    return 12;
  case 129:
    if (size < 8) { return -2; }
    if (!log_first_ts) {
      log_first_ts = E->user_id;
    }
    if (log_read_until > E->user_id) {
      fprintf (stderr, "time goes back from %d to %d in log file\n", log_read_until, E->user_id);
    }
    log_read_until = E->user_id;
    if (E->user_id >= log_time_cutoff && !log_scan_mode) {
      log_cutoff_pos = log_pos - size;
      log_scan_mode = 1;
      if (verbosity) {
 fprintf (stderr, "reached timestamp %d above cutoff %d at binlog position %lld, entering scan mode 1\n",
   E->user_id, log_time_cutoff, (long long) log_cutoff_pos);
      }
    }
    return 8;
  }
  fprintf (stderr, "unknown magic in log file: %08x\n", E->type);
  return -1;
}
