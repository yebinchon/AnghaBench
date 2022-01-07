
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long unw_hash_index_t ;


 int UNW_LOG_HASH_SIZE ;

__attribute__((used)) static inline unw_hash_index_t
hash (unsigned long ip)
{

 static const unsigned long hashmagic = 0x9e3779b97f4a7c16UL;

 return (ip >> 4) * hashmagic >> (64 - UNW_LOG_HASH_SIZE);
}
