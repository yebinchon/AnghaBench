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
struct counter {struct counter* prev_use; struct counter* next_use; } ;

/* Variables and functions */
 struct counter** Counters ; 
 int FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ counters_commit_head ; 
 int counters_prime ; 
 double max_counters ; 
 int /*<<< orphan*/  replay_logevent ; 
 int /*<<< orphan*/  reverse_index_mode ; 
 int /*<<< orphan*/  stats_replay_logevent ; 
 int /*<<< orphan*/  stats_replay_logevent_reverse ; 
 int /*<<< orphan*/  FUNC2 (int,char*,double,int) ; 
 void* FUNC3 (int) ; 

int FUNC4 (int schema) {
  static int initialized = 0;
  if (initialized) {
    return 0;
  }
  initialized = 1;

  if (!reverse_index_mode) {
    replay_logevent = stats_replay_logevent;
  } else {
    replay_logevent = stats_replay_logevent_reverse;
  }

  counters_commit_head = 0;
  counters_prime = FUNC0 (max_counters * 1.5);
  FUNC2 (1, "max_counters: %d, counters_prime: %d\n", max_counters, counters_prime);
  Counters = FUNC3 ((counters_prime + 1) * sizeof (struct counter *));
  struct counter *C;
  Counters[counters_prime] = C = FUNC3 (sizeof (struct counter));
  FUNC1 (C != NULL);
  C->next_use = C;
  C->prev_use = C;

  return 0;
}