
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int dns_tcp_connections; } ;


 int server_close_connection (struct connection*,int) ;
 TYPE_1__ wstat ;

int dns_close_connection (struct connection *c, int who) {
  wstat.dns_tcp_connections--;
  return server_close_connection (c, who);
}
