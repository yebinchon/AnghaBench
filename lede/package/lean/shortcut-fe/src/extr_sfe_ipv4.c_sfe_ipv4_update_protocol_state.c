
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv4_connection {int dummy; } ;
struct sfe_connection_create {int protocol; } ;



 int sfe_ipv4_update_tcp_state (struct sfe_ipv4_connection*,struct sfe_connection_create*) ;

__attribute__((used)) static void
sfe_ipv4_update_protocol_state(struct sfe_ipv4_connection *c,
          struct sfe_connection_create *sic)
{
 switch (sic->protocol) {
 case 128:
  sfe_ipv4_update_tcp_state(c, sic);
  break;
 }
}
