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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* mf; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_8__ {scalar_t__ len; TYPE_6__* prev; TYPE_6__* next; scalar_t__ aio; } ;
typedef  TYPE_2__ core_mf_t ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  cur_user_metafile_bytes ; 
 int /*<<< orphan*/  cur_user_metafiles ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (long long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int verbosity ; 

int FUNC5 (long long user_id) {
  user_t *U = FUNC3 (user_id);

  if (verbosity > 1) {
    FUNC1 (stderr, "unload_user_metafile(%lld)\n", user_id);
  }

  if (!U || !U->mf || U->mf->aio) {
    if (verbosity > 1) {
      FUNC1 (stderr, "cannot unload user metafile (%lld)\n", user_id);
    }
    return 0;
  }


  FUNC4 (U);

  if (verbosity > 1) {
    FUNC1 (stderr, "after unbind_user_metafile (%p)\n", U);
  }

  core_mf_t *M = U->mf;

  FUNC0 (M->next);
  M->next->prev = M->prev;
  M->prev->next = M->next;
  M->next = M->prev = 0;

  allocated_metafile_bytes -= M->len;
  cur_user_metafile_bytes -= M->len;
  cur_user_metafiles--;

  FUNC2 (M);
  U->mf = 0;

  if (verbosity > 1) {
    FUNC1 (stderr, "unload_user_metafile(%lld) END\n", user_id);
  }

  return 1;
}