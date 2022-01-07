
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ht_t ;


 void** ht_get_all (int ,int) ;

void **ht_keys(ht_t self) {
  return ht_get_all(self, 1);
}
