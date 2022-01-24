#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int user_id; int /*<<< orphan*/  topmsg_tree; TYPE_1__* Sublists; TYPE_3__* mf; } ;
typedef  TYPE_2__ user_t ;
struct TYPE_8__ {char* data; int /*<<< orphan*/  aio; } ;
typedef  TYPE_3__ core_mf_t ;
struct TYPE_6__ {scalar_t__ A; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIL_N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int sublists_num ; 
 int verbosity ; 

void FUNC3 (user_t *U) {
  int i;
  core_mf_t *M = U->mf;

  FUNC0 (M && !M->aio);
  char *metafile = M->data;

  if (verbosity > 2) {
    FUNC1 (stderr, "unbind_user_metafile(%p) : user_id=%d mf=%p\n", U, U->user_id, metafile);
  }

  for (i = 0; i < sublists_num; i++) {
    U->Sublists[i].A = 0;
  }

  FUNC2 (U->topmsg_tree);
  U->topmsg_tree = NIL_N;
}