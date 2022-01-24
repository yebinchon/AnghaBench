#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct counter {struct counter* prev; int /*<<< orphan*/  counter_id; struct counter* prev_use; int /*<<< orphan*/  next_use; } ;

/* Variables and functions */
 struct counter** Counters ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t counters_prime ; 
 int /*<<< orphan*/  deleted_by_lru ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct counter*,int) ; 
 struct counter* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 () {
  if (verbosity >= 3) { FUNC1 (stderr, "free_LRU\n"); }
  if (Counters[counters_prime] == 0) {
    return 0;
  }
  if (verbosity >= 3) { FUNC1 (stderr, "first and last are %p and %d\n", Counters[counters_prime]->prev_use, Counters[counters_prime]->next_use); }
  
  if (Counters[counters_prime]->prev_use == Counters[counters_prime]) {
    if (verbosity >= 3) {
      FUNC1 (stderr, "No elements can be deleted by LRU. Failed to free mem.\n");
    }
    return 0;
  } else {
    struct counter *C = Counters[counters_prime]->prev_use;
    if (C) {
      struct counter *D = FUNC3 (C->counter_id, 0);
      while (D && D->prev != C) {
        D = D->prev;
      }
      if (D) {
        FUNC0 (D->prev == C);
        D->prev = 0;
      }
      FUNC2 (C, 1);
      deleted_by_lru++;
    }
    return 1;
  }
}