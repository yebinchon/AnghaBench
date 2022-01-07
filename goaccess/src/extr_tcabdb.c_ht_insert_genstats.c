
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ht_general_stats ;
 int inc_si32 (void*,char const*,int) ;

int
ht_insert_genstats (const char *key, int inc)
{
  void *hash = ht_general_stats;

  if (!hash)
    return -1;

  return inc_si32 (hash, key, inc);
}
