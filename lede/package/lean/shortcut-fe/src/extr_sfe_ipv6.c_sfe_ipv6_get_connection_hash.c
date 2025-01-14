
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sfe_ipv6_addr {int* addr; } ;
typedef int __be16 ;


 int SFE_IPV6_CONNECTION_HASH_MASK ;
 int SFE_IPV6_CONNECTION_HASH_SHIFT ;
 int ntohs (int) ;

__attribute__((used)) static inline unsigned int sfe_ipv6_get_connection_hash(u8 protocol, struct sfe_ipv6_addr *src_ip, __be16 src_port,
       struct sfe_ipv6_addr *dest_ip, __be16 dest_port)
{
 u32 idx, hash = 0;

 for (idx = 0; idx < 4; idx++) {
  hash ^= src_ip->addr[idx] ^ dest_ip->addr[idx];
 }
 hash = hash ^ protocol ^ ntohs(src_port ^ dest_port);
 return ((hash >> SFE_IPV6_CONNECTION_HASH_SHIFT) ^ hash) & SFE_IPV6_CONNECTION_HASH_MASK;
}
