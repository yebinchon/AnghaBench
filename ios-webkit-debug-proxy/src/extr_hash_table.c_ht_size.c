
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ht_t ;
struct TYPE_3__ {size_t num_keys; } ;



size_t ht_size(ht_t self) {
  return self->num_keys;
}
