
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* rpc_close ) (struct connection*,int) ;} ;


 TYPE_1__* RPCC_FUNC (struct connection*) ;
 int client_close_connection (struct connection*,int) ;
 int stub1 (struct connection*,int) ;

int rpcc_php_close_connection (struct connection *c, int who) {
  if (RPCC_FUNC(c)->rpc_close != ((void*)0)) {
    RPCC_FUNC(c)->rpc_close (c, who);
  }

  return client_close_connection (c, who);
}
