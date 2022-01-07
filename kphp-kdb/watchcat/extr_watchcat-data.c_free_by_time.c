
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; struct TYPE_5__* next_time; } ;
typedef TYPE_1__ wkey ;


 int CLOCK_MONOTONIC ;
 int GET_TIME_ID (int ) ;
 int MAX_TIME_GAP ;
 size_t TIME_TABLE_SIZE ;
 int del_wkey (TYPE_1__*) ;
 int fprintf (int ,char*,TYPE_1__*,int,int) ;
 int get_utime (int ) ;
 size_t last_del_time ;
 int my_verbosity ;
 int stderr ;
 TYPE_1__** time_st ;

void free_by_time (int mx) {
  int en = GET_TIME_ID (get_utime (CLOCK_MONOTONIC));
  wkey *st = time_st[last_del_time];

  while (en - last_del_time > MAX_TIME_GAP || last_del_time - en > TIME_TABLE_SIZE - MAX_TIME_GAP ||
         (mx-- && last_del_time != en)) {
    if (st->next_time != st) {
      if (my_verbosity > 1) {
        fprintf (stderr, "del entry %p by time (key = %d) gap = %d\n", st->next_time, st->next_time->x, en - last_del_time);
      }
      del_wkey (st->next_time);
    } else {
      if (++last_del_time == TIME_TABLE_SIZE) {
        last_del_time = 0;
      }
      st = time_st[last_del_time];
    }
  }
}
