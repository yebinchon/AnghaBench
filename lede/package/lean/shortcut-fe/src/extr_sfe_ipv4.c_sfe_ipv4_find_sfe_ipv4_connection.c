
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sfe_ipv4_connection {scalar_t__ src_port; scalar_t__ dest_port; scalar_t__ src_ip; scalar_t__ dest_ip; scalar_t__ protocol; struct sfe_ipv4_connection* next; } ;
struct sfe_ipv4 {struct sfe_ipv4_connection** conn_hash; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 unsigned int sfe_ipv4_get_connection_hash (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct sfe_ipv4_connection *sfe_ipv4_find_sfe_ipv4_connection(struct sfe_ipv4 *si, u32 protocol,
             __be32 src_ip, __be16 src_port,
             __be32 dest_ip, __be16 dest_port)
{
 struct sfe_ipv4_connection *c;
 unsigned int conn_idx = sfe_ipv4_get_connection_hash(protocol, src_ip, src_port, dest_ip, dest_port);
 c = si->conn_hash[conn_idx];




 if (unlikely(!c)) {
  return ((void*)0);
 }




 if ((c->src_port == src_port)
     && (c->dest_port == dest_port)
     && (c->src_ip == src_ip)
     && (c->dest_ip == dest_ip)
     && (c->protocol == protocol)) {
  return c;
 }




 do {
  c = c->next;
 } while (c && (c->src_port != src_port
   || c->dest_port != dest_port
   || c->src_ip != src_ip
   || c->dest_ip != dest_ip
   || c->protocol != protocol));





 return c;
}
