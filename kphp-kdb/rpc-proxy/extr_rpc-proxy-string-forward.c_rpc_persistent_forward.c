
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long step; long long tot_buckets; int * buckets; } ;


 TYPE_1__* CC ;
 long long hash_key (char const*,int) ;

int rpc_persistent_forward (void **IP, void **Data) {
  const char *key = *Data;
  int key_len = (long)*(Data + 1);
  int z = 0;
  if (key_len >= 4 && *key == '#' && *(key + 1) == '#') {
    z = 2;
    while (z < key_len && key[z] != '#') {
      z ++;
    }
    if (z < key_len - 1 && key[z] == '#' && key[z + 1] == '#') {
      z += 2;
    } else {
      z = 0;
    }
    if (z >= key_len) {
      z = 0;
    }
  }
  long long hash = hash_key (key + z, key_len - z);
  if (CC->step > 0) {
    hash /= CC->step;
  }
  *(Data + 2) = &CC->buckets[hash % CC->tot_buckets];
  return 0;
}
