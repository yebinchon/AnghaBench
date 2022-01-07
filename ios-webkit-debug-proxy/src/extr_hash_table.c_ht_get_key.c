
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ht_t ;


 void* ht_get (int ,void const*,int) ;

void *ht_get_key(ht_t self, const void *key) {
  return ht_get(self, key, 1);
}
