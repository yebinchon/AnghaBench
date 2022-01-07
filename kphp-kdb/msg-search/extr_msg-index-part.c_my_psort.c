
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hash; scalar_t__ order; } ;
typedef TYPE_1__ pair_t ;


 TYPE_1__* P ;

void my_psort (int a, int b) {
  pair_t h, t;
  int i, j;
  if (a >= b) return;
  i = a; j = b;
  h = P[(a+b)>>1];
  do {
    while (P[i].hash < h.hash || (P[i].hash == h.hash && P[i].order < h.order)) i++;
    while (P[j].hash > h.hash || (P[j].hash == h.hash && P[j].order > h.order)) j--;
    if (i <= j) {
      t = P[i]; P[i++] = P[j]; P[j--] = t;
    }
  } while (i <= j);
  my_psort (a, j);
  my_psort (i, b);
}
