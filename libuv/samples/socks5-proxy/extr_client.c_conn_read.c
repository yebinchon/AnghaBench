
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stream; } ;
struct TYPE_6__ {scalar_t__ rdstate; TYPE_1__ handle; } ;
typedef TYPE_2__ conn ;


 int ASSERT (int) ;
 int CHECK (int) ;
 scalar_t__ c_busy ;
 scalar_t__ c_stop ;
 int conn_alloc ;
 int conn_read_done ;
 int conn_timer_reset (TYPE_2__*) ;
 scalar_t__ uv_read_start (int *,int ,int ) ;

__attribute__((used)) static void conn_read(conn *c) {
  ASSERT(c->rdstate == c_stop);
  CHECK(0 == uv_read_start(&c->handle.stream, conn_alloc, conn_read_done));
  c->rdstate = c_busy;
  conn_timer_reset(c);
}
