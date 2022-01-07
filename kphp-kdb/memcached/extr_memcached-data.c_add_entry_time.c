
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_time; int next_time; int exp_time; } ;
typedef TYPE_1__ hash_entry_t ;


 size_t GET_TIME_ID (int ) ;
 TYPE_1__* entry_buffer ;
 int* time_st ;

void add_entry_time (int x) {
  hash_entry_t *entry = &entry_buffer[x];

  int f = time_st[GET_TIME_ID (entry->exp_time)];
  int y = entry_buffer[f].prev_time;

  entry->next_time = f;
  entry_buffer[f].prev_time = x;

  entry->prev_time = y;
  entry_buffer[y].next_time = x;
}
