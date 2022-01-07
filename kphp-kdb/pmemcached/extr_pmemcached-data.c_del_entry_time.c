
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_time; struct TYPE_4__* prev_time; } ;
typedef TYPE_1__ hash_entry_t ;


 int assert (TYPE_1__*) ;

void del_entry_time (hash_entry_t *entry) {
  assert (entry);


  assert (entry->prev_time);
  assert (entry->next_time);
  entry->next_time->prev_time = entry->prev_time;
  entry->prev_time->next_time = entry->next_time;
}
