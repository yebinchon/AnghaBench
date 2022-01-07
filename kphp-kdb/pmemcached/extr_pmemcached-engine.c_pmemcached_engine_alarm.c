
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int fd; int pending_queries; int status; int flags; TYPE_1__* Tmp; } ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_3__ {scalar_t__ total_bytes; } ;


 int C_INTIMEOUT ;
 int assert (int) ;
 scalar_t__ conn_wait_aio ;
 int disable_wildcard ;
 int fprintf (int ,char*,int,int,int) ;
 int free (scalar_t__) ;
 TYPE_2__* mc_store ;
 int pmemcached_engine_wakeup (struct connection*) ;
 scalar_t__ read_last_kept (struct connection*,int ) ;
 int stderr ;
 int verbosity ;
 int wildcard_arrays_allocated ;

int pmemcached_engine_alarm (struct connection *c) {
  if (verbosity > 1) {
    fprintf (stderr, "pmemcached_engine connection %d timeout alarm, %d queries pending, status=%d\n", c->fd, c->pending_queries, c->status);
  }
  if (c->Tmp && !disable_wildcard && c->Tmp->total_bytes) {
    if (read_last_kept (c, 0)) {
      if (mc_store->ptr) {
        free (mc_store->ptr);
        wildcard_arrays_allocated --;

      }
    }
  }
  assert (c->status == conn_wait_aio);
  c->flags |= C_INTIMEOUT;
  return pmemcached_engine_wakeup (c);
}
