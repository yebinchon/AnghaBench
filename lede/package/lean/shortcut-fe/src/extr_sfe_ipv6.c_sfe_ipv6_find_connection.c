
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sfe_ipv6_connection {scalar_t__ src_port; scalar_t__ dest_port; scalar_t__ protocol; struct sfe_ipv6_connection* next; int dest_ip; int src_ip; } ;
struct sfe_ipv6_addr {int dummy; } ;
struct sfe_ipv6 {struct sfe_ipv6_connection** conn_hash; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ sfe_ipv6_addr_equal (int ,struct sfe_ipv6_addr*) ;
 unsigned int sfe_ipv6_get_connection_hash (scalar_t__,struct sfe_ipv6_addr*,scalar_t__,struct sfe_ipv6_addr*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct sfe_ipv6_connection *sfe_ipv6_find_connection(struct sfe_ipv6 *si, u32 protocol,
           struct sfe_ipv6_addr *src_ip, __be16 src_port,
           struct sfe_ipv6_addr *dest_ip, __be16 dest_port)
{
 struct sfe_ipv6_connection *c;
 unsigned int conn_idx = sfe_ipv6_get_connection_hash(protocol, src_ip, src_port, dest_ip, dest_port);
 c = si->conn_hash[conn_idx];




 if (unlikely(!c)) {
  return ((void*)0);
 }




 if ((c->src_port == src_port)
     && (c->dest_port == dest_port)
     && (sfe_ipv6_addr_equal(c->src_ip, src_ip))
     && (sfe_ipv6_addr_equal(c->dest_ip, dest_ip))
     && (c->protocol == protocol)) {
  return c;
 }




 do {
  c = c->next;
 } while (c && (c->src_port != src_port
   || c->dest_port != dest_port
   || !sfe_ipv6_addr_equal(c->src_ip, src_ip)
   || !sfe_ipv6_addr_equal(c->dest_ip, dest_ip)
   || c->protocol != protocol));





 return c;
}
