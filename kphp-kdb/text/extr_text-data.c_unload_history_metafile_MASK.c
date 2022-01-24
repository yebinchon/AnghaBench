#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* history_mf; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_7__ {scalar_t__ len; TYPE_5__* prev; TYPE_5__* next; scalar_t__ aio; } ;
typedef  TYPE_2__ core_mf_t ;
struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_history_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  cur_history_metafile_bytes ; 
 int /*<<< orphan*/  cur_history_metafiles ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (long long) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (long long user_id) {
  user_t *U = FUNC3 (user_id);

  if (verbosity > 1) {
    FUNC1 (stderr, "unload_history_metafile(%lld)\n", user_id);
  }

  if (!U || !U->history_mf || U->history_mf->aio) {
    if (verbosity > 1) {
      FUNC1 (stderr, "cannot unload history metafile (%lld)\n", user_id);
    }
    return 0;
  }

  core_mf_t *M = U->history_mf;

  FUNC0 (M->next);
  M->next->prev = M->prev;
  M->prev->next = M->next;
  M->next = M->prev = 0;

  allocated_history_metafile_bytes -= M->len;
  cur_history_metafile_bytes -= M->len;
  cur_history_metafiles--;

  FUNC2 (M);
  U->history_mf = 0;

  if (verbosity > 1) {
    FUNC1 (stderr, "unload_history_metafile(%lld) END\n", user_id);
  }

  return 1;
}