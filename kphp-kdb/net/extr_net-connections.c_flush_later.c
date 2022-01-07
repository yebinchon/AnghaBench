
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int flags; int ev; } ;


 int C_DFLUSH ;
 int C_INCONN ;
 scalar_t__ out_total_processed_bytes (struct connection*) ;
 scalar_t__ out_total_unprocessed_bytes (struct connection*) ;
 int put_event_into_heap (int ) ;

int flush_later (struct connection *c) {
  if (out_total_processed_bytes (c) + out_total_unprocessed_bytes (c) > 0) {
    if (c->flags & C_DFLUSH) {
      return 1;
    }
    c->flags |= C_DFLUSH;
    if (!(c->flags & C_INCONN)) {
      put_event_into_heap (c->ev);
    }
    return 2;
  }
  return 0;
}
