
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int timeout; struct TYPE_4__* next_time; struct TYPE_4__* prev_time; } ;
typedef TYPE_1__ qkey ;


 int CLOCK_MONOTONIC ;
 size_t GET_TIME_ID (int) ;
 int fprintf (int ,char*,char*,int) ;
 int get_utime (int ) ;
 int my_verbosity ;
 int stderr ;
 TYPE_1__** time_st ;

void add_entry_time (qkey *entry, int delay) {
  if (my_verbosity > 2) {
    fprintf (stderr, "upd timeout %s : %d\n", entry->name, entry->timeout);
  }

  qkey *f = time_st[GET_TIME_ID (entry->timeout + get_utime (CLOCK_MONOTONIC) + delay)];
  qkey *y = f->prev_time;

  entry->next_time = f;
  f->prev_time = entry;

  entry->prev_time = y;
  y->next_time = entry;
}
