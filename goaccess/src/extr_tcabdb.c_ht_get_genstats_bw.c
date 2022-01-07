
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int get_su64 (void*,char const*) ;
 void* ht_general_stats ;

uint64_t
ht_get_genstats_bw (const char *key)
{
  void *hash = ht_general_stats;

  if (!hash)
    return 0;

  return get_su64 (hash, key);
}
