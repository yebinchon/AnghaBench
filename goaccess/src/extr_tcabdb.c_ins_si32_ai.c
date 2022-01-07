
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ht_get_size (void*) ;
 int ins_si32 (void*,char const*,int) ;

__attribute__((used)) static int
ins_si32_ai (void *hash, const char *key)
{
  int size = 0, value = 0;

  if (!hash)
    return -1;

  size = ht_get_size (hash);

  value = size > 0 ? size + 1 : 1;

  if (ins_si32 (hash, key, value) == -1)
    return -1;

  return value;
}
