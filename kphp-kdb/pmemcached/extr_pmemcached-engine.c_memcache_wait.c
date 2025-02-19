
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int total_bytes; } ;
struct connection {int flags; TYPE_1__* type; TYPE_2__ Out; } ;
struct TYPE_3__ {int (* writer ) (struct connection*) ;} ;


 int C_INTIMEOUT ;
 int C_WANTWR ;
 int * WaitAioArr ;
 int WaitAioArrClear () ;
 int WaitAioArrPos ;
 int aio_metafile_query_type ;
 int conn_schedule_aio (int ,struct connection*,double,int *) ;
 int fprintf (int ,char*,...) ;
 int set_connection_timeout (struct connection*,double) ;
 int stderr ;
 int stub1 (struct connection*) ;
 int verbosity ;

int memcache_wait (struct connection *c) {
  if (verbosity > 2) {
    fprintf (stderr, "wait for aio..\n");
  }
  if (c->flags & C_INTIMEOUT) {
    if (verbosity > 1) {
      fprintf (stderr, "memcache: IN TIMEOUT (%p)\n", c);
    }
    return 0;
  }
  if (c->Out.total_bytes > 8192) {
    c->flags |= C_WANTWR;
    c->type->writer (c);
  }

  if (!WaitAioArrPos) {
    fprintf (stderr, "WaitAio=0 - no memory to load user metafile, query dropped.\n");
    return 0;
  }
  int i;
  for (i = 0; i < WaitAioArrPos; i++) {
    conn_schedule_aio (WaitAioArr[i], c, 0.7, &aio_metafile_query_type);
  }
  set_connection_timeout (c, 0.5);
  WaitAioArrClear ();
  return 1;
}
