
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int incoming; int outgoing; } ;
typedef TYPE_1__ client_ctx ;


 scalar_t__ conn_cycle (char*,int *,int *) ;
 int do_kill (TYPE_1__*) ;
 int s_proxy ;

__attribute__((used)) static int do_proxy(client_ctx *cx) {
  if (conn_cycle("client", &cx->incoming, &cx->outgoing)) {
    return do_kill(cx);
  }

  if (conn_cycle("upstream", &cx->outgoing, &cx->incoming)) {
    return do_kill(cx);
  }

  return s_proxy;
}
