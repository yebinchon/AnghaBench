
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data_len; int created; int * next; scalar_t__ ref_cnt; } ;
typedef TYPE_1__ event ;


 int CLOCK_MONOTONIC ;
 int assert (TYPE_1__*) ;
 scalar_t__ dl_get_memory_used () ;
 TYPE_1__* dl_malloc (size_t) ;
 int events_cnt ;
 int events_created ;
 int events_memory ;
 size_t get_event_size_d (int) ;
 int get_utime (int ) ;

event *event_malloc (int data_len) {
  size_t l = get_event_size_d (data_len);

  events_created++;
  events_cnt++;


  events_memory -= dl_get_memory_used();
  event *e = dl_malloc (l);
  events_memory += dl_get_memory_used();

  assert (e);

  e->data_len = data_len;
  e->ref_cnt = 0;
  e->next = ((void*)0);

  e->created = get_utime (CLOCK_MONOTONIC);

  return e;
}
