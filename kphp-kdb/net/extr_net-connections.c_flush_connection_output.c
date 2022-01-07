
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int flags; int fd; TYPE_1__* type; } ;
struct TYPE_2__ {int (* writer ) (struct connection*) ;} ;


 int C_INCONN ;
 int C_WANTWR ;
 int compute_conn_events (struct connection*) ;
 int epoll_insert (int ,int ) ;
 scalar_t__ out_total_processed_bytes (struct connection*) ;
 scalar_t__ out_total_unprocessed_bytes (struct connection*) ;
 int stub1 (struct connection*) ;

int flush_connection_output (struct connection *c) {
  if (out_total_processed_bytes (c) + out_total_unprocessed_bytes (c) > 0) {
    c->flags |= C_WANTWR;
    int res = c->type->writer (c);
    if (out_total_processed_bytes (c) > 0 && !(c->flags & C_INCONN)) {
      epoll_insert (c->fd, compute_conn_events (c));
    }
    return res;
  } else {
    return 0;
  }
}
