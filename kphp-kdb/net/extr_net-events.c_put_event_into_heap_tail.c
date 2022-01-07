
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ timestamp; } ;
typedef TYPE_1__ event_t ;


 scalar_t__ ev_timestamp ;
 int put_event_into_heap (TYPE_1__*) ;

int put_event_into_heap_tail (event_t *ev, int ts_delta) {
  ev->timestamp = ev_timestamp + ts_delta;
  return put_event_into_heap (ev);
}
