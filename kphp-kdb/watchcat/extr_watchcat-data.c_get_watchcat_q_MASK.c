#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long long id; struct TYPE_4__* prev; struct TYPE_4__* next; scalar_t__ vn; } ;
typedef  TYPE_1__ watchcat ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  h_watchcat_q ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long long*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long long*) ; 

inline watchcat *FUNC3 (long long id, int force) {
  watchcat **b;
  if (force) {
    b = (watchcat **)FUNC1 (&h_watchcat_q, &id);
    if (*b == (watchcat *)&id) {
      watchcat *w = FUNC0();

      w->id = id;
      w->vn = 0;
      w->next = w->prev = w;

      *b = w;
    }
    return *b;
  } else {
    b = (watchcat **)FUNC2 (&h_watchcat_q, &id);
    return b == NULL ? NULL : *b;
  }
}