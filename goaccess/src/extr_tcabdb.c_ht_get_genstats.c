
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int get_sui32 (void*,char const*) ;
 void* ht_general_stats ;

uint32_t
ht_get_genstats (const char *key)
{
  void *hash = ht_general_stats;

  if (!hash)
    return 0;

  return get_sui32 (hash, key);
}
