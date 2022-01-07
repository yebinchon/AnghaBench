
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int last_query_time; } ;
struct TYPE_2__ {int dns_tcp_connections; } ;


 int now ;
 TYPE_1__ wstat ;

int dns_init_accepted (struct connection *c) {
  wstat.dns_tcp_connections++;
  c->last_query_time = now;
  return 0;
}
