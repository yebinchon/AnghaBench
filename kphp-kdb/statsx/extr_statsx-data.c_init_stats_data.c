
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {struct counter* prev_use; struct counter* next_use; } ;


 struct counter** Counters ;
 int am_choose_hash_prime (double) ;
 int assert (int ) ;
 scalar_t__ counters_commit_head ;
 int counters_prime ;
 double max_counters ;
 int replay_logevent ;
 int reverse_index_mode ;
 int stats_replay_logevent ;
 int stats_replay_logevent_reverse ;
 int vkprintf (int,char*,double,int) ;
 void* zzmalloc0 (int) ;

int init_stats_data (int schema) {
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
  counters_prime = am_choose_hash_prime (max_counters * 1.5);
  vkprintf (1, "max_counters: %d, counters_prime: %d\n", max_counters, counters_prime);
  Counters = zzmalloc0 ((counters_prime + 1) * sizeof (struct counter *));
  struct counter *C;
  Counters[counters_prime] = C = zzmalloc0 (sizeof (struct counter));
  assert (C != ((void*)0));
  C->next_use = C;
  C->prev_use = C;

  return 0;
}
