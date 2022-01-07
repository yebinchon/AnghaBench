
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {struct counter* prev_use; struct counter* next_use; } ;


 struct counter** Counters ;
 size_t counters_prime ;

__attribute__((used)) static void add_use (struct counter *C) {
  C->next_use = Counters[counters_prime]->next_use;
  Counters[counters_prime]->next_use = C;
  C->prev_use = Counters[counters_prime];
  C->next_use->prev_use = C;
}
