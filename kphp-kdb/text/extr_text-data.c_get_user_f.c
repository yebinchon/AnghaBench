
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int user_id; int topmsg_tree; TYPE_1__* Sublists; int persistent_ts; int last_local_id; struct file_user_list_entry* dir_entry; int last_pq; int first_pq; int last_q; int first_q; } ;
typedef TYPE_2__ user_t ;
struct file_user_list_entry_search_history {int user_history_max_ts; } ;
struct file_user_list_entry {int user_last_local_id; int * user_sublists_size; } ;
typedef int listree_t ;
struct TYPE_9__ {void* root; int last_A; int N; } ;


 void* NIL ;
 int NIL_N ;
 int USER_CONN (TYPE_2__*) ;
 int USER_PCONN (TYPE_2__*) ;
 TYPE_2__** User ;
 int conv_uid (int) ;
 int idx_sublists_offset ;
 struct file_user_list_entry* lookup_user_directory (int) ;
 int max_uid ;
 int memset (TYPE_2__*,int ,int) ;
 int min_uid ;
 scalar_t__ persistent_history_enabled ;
 int sublists_num ;
 int tot_users ;
 TYPE_2__* zmalloc (int) ;

user_t *get_user_f (int user_id) {
  int i = conv_uid (user_id);
  user_t *U;
  if (i < 0) { return 0; }
  U = User[i];
  if (U) { return U; }

  int sz = sizeof (user_t) + sublists_num * sizeof (listree_t);
  U = zmalloc (sz);
  memset (U, 0, sz);
  U->user_id = user_id;
  User[i] = U;
  if (i > max_uid) { max_uid = i; }
  if (i < min_uid) { min_uid = i; }
  tot_users++;

  U->first_q = U->last_q = USER_CONN (U);
  U->first_pq = U->last_pq = USER_PCONN (U);

  struct file_user_list_entry *UF = lookup_user_directory (user_id);
  U->dir_entry = UF;
  if (UF) {
    U->last_local_id = UF->user_last_local_id;
    if (persistent_history_enabled) {
      U->persistent_ts = ((struct file_user_list_entry_search_history *) UF)->user_history_max_ts;
    }
    for (i = 0; i < sublists_num; i++) {
      U->Sublists[i].root = NIL;
      U->Sublists[i].N = UF->user_sublists_size[idx_sublists_offset+i];
      U->Sublists[i].last_A = UF->user_last_local_id;
    }
  } else {
    for (i = 0; i < sublists_num; i++) {
      U->Sublists[i].root = NIL;
    }
  }

  U->topmsg_tree = NIL_N;

  return U;
}
