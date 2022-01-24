#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ delayed_tree; int /*<<< orphan*/  peer_tree; struct file_user_list_entry* dir_entry; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ tree_t ;
struct file_user_list_entry {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  last_A; int /*<<< orphan*/  N; int /*<<< orphan*/ * A; int /*<<< orphan*/  root; } ;
typedef  TYPE_3__ listree_t ;
struct TYPE_13__ {char* data; } ;
typedef  TYPE_4__ core_mf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 
 char* FUNC4 (TYPE_1__*) ; 
 TYPE_4__* FUNC5 (int) ; 
 struct file_user_list_entry* FUNC6 (int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int) ; 

int FUNC8 (int user_id, int peer_id, listree_t *X) {
  user_t *U;
  tree_t *T;
  struct file_user_list_entry *D;
  char *metafile;

  //fprintf (stderr, "get_peer_msglist(%d,%d,%d,%d)\n", user_id, peer_id, from, to);

  if (FUNC1 (user_id) < 0 || !peer_id) {
    return -1;
  }

  U = FUNC3 (user_id);
  T = 0;

  if (U) {
    D = U->dir_entry;
    if (U->delayed_tree) {
      /* need to load user metafile to perform delayed operations */
      if (!FUNC5 (user_id)) {
        return -2;
      }
    }
    T = FUNC7 (U->peer_tree, peer_id);
  } else {
    D = FUNC6 (user_id);
  }

  if (!T && !D) {
    return 0;
  }

  X->root = (T ? T->data : NIL);

  if (D) {
    if (!U || !FUNC4 (U)) {
      core_mf_t *M = FUNC5 (user_id);
      if (!M) {
        return -2;
      }
      metafile = M->data;
    } else {
      metafile = FUNC4 (U);
    }
    X->A = FUNC2 (metafile, peer_id, &X->N);
    X->last_A = (X->N ? X->A[X->N-1] : 0);
    //fprintf (stderr, "peer list size %d: %d %d %d...", X->N, X->A?X->A[0]:-1, X->A?X->A[1]:-1, X->A?X->A[2]:-1);
  } else {
    X->A = 0;
    X->N = 0;
    X->last_A = 0;
  }

  FUNC0 (!U || !U->delayed_tree);
  return 1;
}