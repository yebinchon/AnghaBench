
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int flags; scalar_t__ status; int error; int ev; TYPE_1__* target; } ;
struct TYPE_2__ {int active_outbound_connections; } ;


 int C_FAILED ;
 int C_WANTRD ;
 int C_WANTWR ;
 int active_connections ;
 int active_outbound_connections ;
 scalar_t__ conn_connecting ;
 scalar_t__ conn_error ;
 int put_event_into_heap (int ) ;
 int total_connect_failures ;
 int total_failed_connections ;

int fail_connection (struct connection *c, int err) {
  if (!(c->flags & C_FAILED)) {
    total_failed_connections++;
    if (c->status == conn_connecting) {
      total_connect_failures++;
    }
  }
  c->flags |= C_FAILED;
  c->flags &= ~(C_WANTRD | C_WANTWR);
  if (c->status == conn_connecting) {
    c->target->active_outbound_connections++;
    active_outbound_connections++;
    active_connections++;
  }
  c->status = conn_error;
  if (c->error >= 0) {
    c->error = err;
  }
  put_event_into_heap (c->ev);
  return 0;
}
