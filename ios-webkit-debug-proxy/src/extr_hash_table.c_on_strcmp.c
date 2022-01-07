
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ht_t ;


 intptr_t strcmp (void const*,void const*) ;

intptr_t on_strcmp(ht_t ht, const void *key1, const void *key2) {
  if (key1 == key2 || !key1 || !key2) {
    return (key1 == key2 ? 0 : key1 ? -1 : 1);
  }
  return strcmp(key1, key2);
}
