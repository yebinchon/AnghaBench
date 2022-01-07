
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ exp_time; struct TYPE_5__* prev_time; struct TYPE_5__* next_time; } ;
typedef TYPE_1__ hash_entry_t ;


 size_t GET_TIME_ID (scalar_t__) ;
 int assert (TYPE_1__*) ;
 TYPE_1__* entry_buffer ;
 int* time_st ;

void add_entry_time (hash_entry_t *entry) {
  assert (entry);

  if (entry->exp_time >=0) {
    int f = time_st[GET_TIME_ID (entry->exp_time)];
    hash_entry_t *entry_time = &entry_buffer[f];
    assert (entry_time->next_time);
    assert (entry_time->prev_time);
    entry->next_time = entry_time;
    entry->prev_time = entry_time->prev_time;
    entry->next_time->prev_time = entry;
    entry->prev_time->next_time = entry;
    assert (entry_time->next_time);
    assert (entry_time->prev_time);
  } else {
    entry->next_time = entry;
    entry->prev_time = entry;
  }
}
