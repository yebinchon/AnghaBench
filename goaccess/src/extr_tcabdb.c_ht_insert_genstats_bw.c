
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 void* ht_general_stats ;
 int inc_su64 (void*,char const*,int ) ;

int
ht_insert_genstats_bw (const char *key, uint64_t inc)
{
  void *hash = ht_general_stats;

  if (!hash)
    return -1;

  return inc_su64 (hash, key, inc);
}
