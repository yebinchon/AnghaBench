
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objects_n; } ;
typedef TYPE_1__ data ;



int data_loaded (data *d) {
  return d->objects_n >= 0;
}
