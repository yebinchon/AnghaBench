
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int ev; } ;


 int put_event_into_heap_tail (int ,int) ;

int conn_rerun_later (struct connection *c, int ts_delta) {
  return put_event_into_heap_tail (c->ev, ts_delta);
}
