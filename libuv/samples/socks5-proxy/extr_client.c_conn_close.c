
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* data; } ;
typedef TYPE_3__ uv_handle_t ;
struct TYPE_8__ {TYPE_4__* data; } ;
struct TYPE_7__ {TYPE_3__ handle; } ;
struct TYPE_10__ {scalar_t__ rdstate; scalar_t__ wrstate; TYPE_2__ timer_handle; TYPE_1__ handle; } ;
typedef TYPE_4__ conn ;


 int ASSERT (int) ;
 scalar_t__ c_dead ;
 int conn_close_done ;
 int uv_close (TYPE_3__*,int ) ;

__attribute__((used)) static void conn_close(conn *c) {
  ASSERT(c->rdstate != c_dead);
  ASSERT(c->wrstate != c_dead);
  c->rdstate = c_dead;
  c->wrstate = c_dead;
  c->timer_handle.data = c;
  c->handle.handle.data = c;
  uv_close(&c->handle.handle, conn_close_done);
  uv_close((uv_handle_t *) &c->timer_handle, conn_close_done);
}
