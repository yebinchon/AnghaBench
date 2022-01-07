
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* std_val; } ;


 TYPE_1__** eq ;
 size_t eq_l ;
 scalar_t__ eq_n ;
 int now ;

int get_time (void) {
  if (eq_n) {
    return eq[eq_l]->std_val[0];
  }
  return now;
}
