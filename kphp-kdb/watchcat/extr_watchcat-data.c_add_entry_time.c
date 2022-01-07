
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeout; struct TYPE_4__* next_time; struct TYPE_4__* prev_time; } ;
typedef TYPE_1__ wkey ;


 int CLOCK_MONOTONIC ;
 size_t GET_TIME_ID (int) ;
 scalar_t__ get_utime (int ) ;
 int max (scalar_t__,int) ;
 TYPE_1__** time_st ;

inline void add_entry_time (wkey *entry, int timeout) {
  int new_timeout = max (get_utime (CLOCK_MONOTONIC) + timeout, entry->timeout);

  entry->timeout = new_timeout;

  wkey *f = time_st[GET_TIME_ID (new_timeout)];
  wkey *y = f->prev_time;

  entry->next_time = f;
  f->prev_time = entry;

  entry->prev_time = y;
  y->next_time = entry;
}
