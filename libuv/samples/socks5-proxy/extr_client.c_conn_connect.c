
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ sa_family; } ;
struct TYPE_8__ {TYPE_4__ addr; int connect_req; } ;
struct TYPE_7__ {int tcp; } ;
struct TYPE_9__ {TYPE_2__ t; TYPE_1__ handle; } ;
typedef TYPE_3__ conn ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ASSERT (int) ;
 int conn_connect_done ;
 int conn_timer_reset (TYPE_3__*) ;
 int uv_tcp_connect (int *,int *,TYPE_4__*,int ) ;

__attribute__((used)) static int conn_connect(conn *c) {
  ASSERT(c->t.addr.sa_family == AF_INET ||
         c->t.addr.sa_family == AF_INET6);
  conn_timer_reset(c);
  return uv_tcp_connect(&c->t.connect_req,
                        &c->handle.tcp,
                        &c->t.addr,
                        conn_connect_done);
}
