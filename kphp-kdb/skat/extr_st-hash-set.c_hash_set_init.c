
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* hash_set_t ;


 int ST_HASH_SET_SIZE ;

void hash_set_init (hash_set_t h) {
  int i;
  for (i = 0; i < ST_HASH_SET_SIZE; i++) {
    h[i] = 0;
  }
}
