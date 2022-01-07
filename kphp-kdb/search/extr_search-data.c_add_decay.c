
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; double weight; } ;


 double M_LN2 ;
 TYPE_1__ QRT ;
 scalar_t__ QRT_min_creation_time ;
 scalar_t__ now ;

void add_decay (int rate_type, double weight) {
  QRT.p = rate_type;
  QRT.weight = -(M_LN2 / weight);
  QRT_min_creation_time = now - weight * 40;
}
