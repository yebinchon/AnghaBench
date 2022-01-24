#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int user_id; int /*<<< orphan*/  topmsg_tree; TYPE_1__* Sublists; int /*<<< orphan*/  persistent_ts; int /*<<< orphan*/  last_local_id; struct file_user_list_entry* dir_entry; int /*<<< orphan*/  last_pq; int /*<<< orphan*/  first_pq; int /*<<< orphan*/  last_q; int /*<<< orphan*/  first_q; } ;
typedef  TYPE_2__ user_t ;
struct file_user_list_entry_search_history {int /*<<< orphan*/  user_history_max_ts; } ;
struct file_user_list_entry {int /*<<< orphan*/  user_last_local_id; int /*<<< orphan*/ * user_sublists_size; } ;
typedef  int /*<<< orphan*/  listree_t ;
struct TYPE_9__ {void* root; int /*<<< orphan*/  last_A; int /*<<< orphan*/  N; } ;

/* Variables and functions */
 void* NIL ; 
 int /*<<< orphan*/  NIL_N ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__** User ; 
 int FUNC2 (int) ; 
 int idx_sublists_offset ; 
 struct file_user_list_entry* FUNC3 (int) ; 
 int max_uid ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int min_uid ; 
 scalar_t__ persistent_history_enabled ; 
 int sublists_num ; 
 int /*<<< orphan*/  tot_users ; 
 TYPE_2__* FUNC5 (int) ; 

user_t *FUNC6 (int user_id) {
  int i = FUNC2 (user_id);
  user_t *U;
  if (i < 0) { return 0; }
  U = User[i];
  if (U) { return U; }

  int sz = sizeof (user_t) + sublists_num * sizeof (listree_t);
  U = FUNC5 (sz);
  FUNC4 (U, 0, sz);
  U->user_id = user_id;
  User[i] = U;
  if (i > max_uid) { max_uid = i; }
  if (i < min_uid) { min_uid = i; }
  tot_users++;

  U->first_q = U->last_q = FUNC0 (U);
  U->first_pq = U->last_pq = FUNC1 (U);

  struct file_user_list_entry *UF = FUNC3 (user_id);
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