
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;
typedef int __be32 ;
typedef int __be16 ;


 unsigned int SFE_IPV4_CONNECTION_HASH_MASK ;
 unsigned int SFE_IPV4_CONNECTION_HASH_SHIFT ;
 unsigned int ntohl (int) ;
 unsigned int ntohs (int) ;

__attribute__((used)) static inline unsigned int sfe_ipv4_get_connection_hash(u8 protocol, __be32 src_ip, __be16 src_port,
       __be32 dest_ip, __be16 dest_port)
{
 u32 hash = ntohl(src_ip ^ dest_ip) ^ protocol ^ ntohs(src_port ^ dest_port);
 return ((hash >> SFE_IPV4_CONNECTION_HASH_SHIFT) ^ hash) & SFE_IPV4_CONNECTION_HASH_MASK;
}
