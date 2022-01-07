
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* prev_time; struct TYPE_3__* next_time; } ;


 int CLOCK_MONOTONIC ;
 int GET_TIME_ID (int ) ;
 int TIME_TABLE_SIZE ;
 TYPE_1__* alloc_wkey () ;
 int get_utime (int ) ;
 int h_watchcat ;
 int h_watchcat_q ;
 int hset_llp_init (int *) ;
 scalar_t__ keys_cnt ;
 scalar_t__ keys_memory ;
 int last_del_time ;
 TYPE_1__** time_st ;

void init_all (void) {
  hset_llp_init (&h_watchcat);
  hset_llp_init (&h_watchcat_q);

  int i;
  for (i = 0; i < TIME_TABLE_SIZE; i++) {
    time_st[i] = alloc_wkey();
    time_st[i]->next_time = time_st[i]->prev_time = time_st[i];
  }
  keys_cnt = 0;
  keys_memory = 0;

  last_del_time = GET_TIME_ID (get_utime (CLOCK_MONOTONIC));
}
