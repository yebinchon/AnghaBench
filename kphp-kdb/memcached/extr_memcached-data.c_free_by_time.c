
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_time; char* key; } ;


 int CLOCK_MONOTONIC ;
 int GET_TIME_ID (int ) ;
 int MAX_TIME_GAP ;
 size_t TIME_TABLE_SIZE ;
 int del_entry (size_t) ;
 TYPE_1__* entry_buffer ;
 int fprintf (int ,char*,int,char*,int) ;
 int get_utime (int ) ;
 size_t last_del_time ;
 int stderr ;
 int* time_st ;
 scalar_t__ verbosity ;

void free_by_time (int mx) {
  int en = GET_TIME_ID (get_utime (CLOCK_MONOTONIC)), st = time_st[last_del_time];

  while (en - last_del_time > MAX_TIME_GAP || last_del_time - en > TIME_TABLE_SIZE - MAX_TIME_GAP ||
         (mx-- && last_del_time != en)) {
    if (entry_buffer[st].next_time != st) {
      if (verbosity > 0) {
        fprintf (stderr, "del entry %d by time (key = %s) gap = %d\n", entry_buffer[st].next_time, entry_buffer[entry_buffer[st].next_time].key, en - last_del_time);
      }
      del_entry (entry_buffer[st].next_time);
    } else {
      if (++last_del_time == TIME_TABLE_SIZE) {
        last_del_time = 0;
      }
      st = time_st[last_del_time];
    }
  }
}
