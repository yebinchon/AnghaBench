
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ht_general_stats ;
 int ins_si32 (void*,char const*,int) ;

int
ht_replace_genstats (const char *key, int value)
{
  void *hash = ht_general_stats;

  if (!hash)
    return -1;

  return ins_si32 (hash, key, value);
}
