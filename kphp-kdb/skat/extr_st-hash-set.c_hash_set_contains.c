
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_t ;
typedef int hash_set_t ;


 int LIST (int ,int ) ;
 int list_hash_contains (int ,int ) ;

bool hash_set_contains (hash_set_t h, hash_t x) {
  return list_hash_contains (LIST (h, x), x);
}
