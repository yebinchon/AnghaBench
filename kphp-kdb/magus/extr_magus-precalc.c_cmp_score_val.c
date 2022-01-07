
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float val; } ;
typedef TYPE_1__ score ;



int cmp_score_val (const void *a, const void *b) {
  float diff = ((score *)a)->val - ((score *)b)->val;
  return diff > 1e-9 ? -1 : diff < -1e-9;
}
