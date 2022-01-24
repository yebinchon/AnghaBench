#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int user_id; void* topmsg_tree; int /*<<< orphan*/  peer_tree; struct file_user_list_entry* dir_entry; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ tree_t ;
struct TYPE_14__ {int z; int x; } ;
typedef  TYPE_3__ tree_num_t ;
struct file_user_list_entry {int user_last_local_id; } ;
struct TYPE_15__ {int N; int /*<<< orphan*/  last_A; int /*<<< orphan*/ * A; int /*<<< orphan*/  root; } ;
typedef  TYPE_4__ listree_t ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 void* NIL_N ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,TYPE_1__*,char*,struct file_user_list_entry*,int,int,int,int,int,int,int) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (void*,int) ; 
 void* FUNC8 (void*,int,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,TYPE_1__*,int,int,int,int,int,char*,struct file_user_list_entry*) ; 

int FUNC11 (user_t *U, int peer_id, int local_id, int op) {
  char *metafile = FUNC3 (U);
  struct file_user_list_entry *D = U->dir_entry;
  listree_t X;
  int prev_id = 0;
  tree_num_t *TT;

  FUNC0 (local_id > 0 && (metafile || !D || local_id > D->user_last_local_id));

  if (!metafile && D) {
    FUNC0 (U->topmsg_tree == NIL_N);
    return 0;
  }

  tree_t *T = FUNC6 (U->peer_tree, peer_id);

  X.root = (T ? T->data : NIL);

  if (metafile) {
    X.A = FUNC1 (metafile, peer_id, &X.N);
    X.last_A = (X.N ? X.A[X.N-1] : 0);
    //fprintf (stderr, "peer list size %d: %d %d %d...", X.N, X.A?X.A[0]:-1, X.A?X.A[1]:-1, X.A?X.A[2]:-1);
  } else {
    X.A = 0;
    X.N = 0;
    X.last_A = 0;
  }

  prev_id = FUNC4 (&X, 0);

  FUNC10 (4, "adjust_topmsg_tree (%p %d, %d, %d, %d) : prev_id=%d metafile=%p D=%p\n", U, U->user_id, peer_id, local_id, op, prev_id, metafile, D);

  FUNC0 (prev_id == -1 || prev_id > 0);

  if (local_id < prev_id) {
    // we are inserting or deleting a message under current top of this peermsglistree
    return prev_id;
  }

  if (op > 0) {
    if (prev_id > 0) {
      TT = FUNC9 (U->topmsg_tree, prev_id);
      if (TT->z != peer_id) {
        FUNC2 (stderr, "ERROR in adjust_topmsg_tree: uid=%d, U=%p, mf=%p, D=%p, mf_last_local_id=%d, peer=%d, local_id=%d, prev_id=%d, op=%d, TT.x=%d, TT.z=%d\n", U->user_id, U, metafile, D, D ? D->user_last_local_id : 0, peer_id, local_id, prev_id, op, TT->x, TT->z);
	// print_backtrace ();
	// return 0;
      }
      FUNC0 (TT->z == peer_id);
      U->topmsg_tree = FUNC7 (U->topmsg_tree, prev_id);
    }
    U->topmsg_tree = FUNC8 (U->topmsg_tree, local_id, FUNC5(), peer_id);
  } else {
    TT = FUNC9 (U->topmsg_tree, local_id);
    if (TT->z != peer_id) {
      FUNC2 (stderr, "ERROR in adjust_topmsg_tree: uid=%d, U=%p, mf=%p, D=%p, mf_last_local_id=%d, peer=%d, local_id=%d, prev_id=%d, op=%d, TT.x=%d, TT.z=%d\n", U->user_id, U, metafile, D, D ? D->user_last_local_id : 0, peer_id, local_id, prev_id, op, TT->x, TT->z);
      // print_backtrace ();
      // return 0;
    }
    FUNC0 (TT->z == peer_id);
    U->topmsg_tree = FUNC7 (U->topmsg_tree, local_id);
    if (prev_id > 0) {
      U->topmsg_tree = FUNC8 (U->topmsg_tree, prev_id, FUNC5(), peer_id);
    }
  }

  return prev_id;
}