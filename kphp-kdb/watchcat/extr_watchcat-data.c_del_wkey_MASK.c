#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  x; int /*<<< orphan*/ * next_time; TYPE_2__* parent; } ;
typedef  TYPE_1__ wkey ;
struct TYPE_12__ {scalar_t__ size; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; struct TYPE_11__* next; TYPE_5__ keys; } ;
typedef  TYPE_2__ watchcat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  h_watchcat ; 
 int /*<<< orphan*/  h_watchcat_q ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 

inline void FUNC7 (wkey *k) {
  watchcat *w = k->parent;

  if (k->next_time != NULL) {
    FUNC0 (k);
  }

  FUNC5 (&w->keys, k->x);

  //TODO can we replace next line with if (w->keys.root == NULL) and delete size from set
  if (w->keys.size == 0) {
    watchcat *q = FUNC6 (w);

    if (q->next == q) {
      FUNC4 (&h_watchcat_q, &q->id);
      FUNC3 (q);
    }

    if (my_verbosity > 1) {
      FUNC1 (stderr, "Del watchcat %d\n", w->id);
    }

    FUNC4 (&h_watchcat, &w->id);
    FUNC2 (w);
  }
}