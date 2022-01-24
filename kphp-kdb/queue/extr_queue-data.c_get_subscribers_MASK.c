#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  s; scalar_t__ id; TYPE_2__* q; } ;
typedef  TYPE_1__ subscribers ;
struct TYPE_7__ {int /*<<< orphan*/  subscr_cnt; } ;
typedef  TYPE_2__ queue ;
typedef  scalar_t__ ll ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  h_subscribers ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

inline subscribers *FUNC8 (ll id, int force) {
  subscribers **b;

  // FAIL: TOO MUCH LOG DATA dbg ("get_subscribers %lld (force = %d)\n", id, force);

  if (force) {
    queue *q = NULL;

    if (!FUNC0 (id)) {
      q = FUNC4 (id);
      if (q == NULL) {
        return NULL;
      }
    }

    b = (subscribers **)FUNC5 (&h_subscribers, &id);
//    fprintf (stderr, "%p ?? %p (%p;%p)\n", *b, (subscribers *)&id, &id, (int *)*b);
//    fprintf (stderr, "");
    if (*b == (subscribers *)&id) {
      subscribers *w = FUNC1();
      if (!FUNC0 (id)) {
        FUNC2 (q != NULL);
        w->q = q;
        q->subscr_cnt++;
      }

      w->id = id;
      FUNC7 (&w->s);

      if (my_verbosity > 1) {
        FUNC3 (stderr, "subcribers_created id = %ld\n", id);
      }

      *b = w;
    }
  } else {
    b = (subscribers **)FUNC6 (&h_subscribers, &id);
    if (b == NULL) {
      return NULL;
    }
  }
  return *b;
}