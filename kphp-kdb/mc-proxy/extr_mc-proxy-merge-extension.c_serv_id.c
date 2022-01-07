
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {scalar_t__ target; } ;
struct TYPE_2__ {int tot_buckets; scalar_t__* buckets; } ;


 TYPE_1__* CC ;

int serv_id (struct connection *c) {
  int i;
  for (i = 0; i < CC->tot_buckets; i++) {
    if (CC->buckets[i] == c->target) {
      return i;
    }
  }
  return -1;
}
