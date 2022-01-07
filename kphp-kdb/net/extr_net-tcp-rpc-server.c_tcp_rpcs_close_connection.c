
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* rpc_close ) (struct connection*,int) ;} ;


 TYPE_1__* TCP_RPCS_FUNC (struct connection*) ;
 int server_close_connection (struct connection*,int) ;
 int stub1 (struct connection*,int) ;

int tcp_rpcs_close_connection (struct connection *c, int who) {
  if (TCP_RPCS_FUNC(c)->rpc_close != ((void*)0)) {
    TCP_RPCS_FUNC(c)->rpc_close (c, who);
  }

  return server_close_connection (c, who);
}
