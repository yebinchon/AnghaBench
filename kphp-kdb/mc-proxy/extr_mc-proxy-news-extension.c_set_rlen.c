
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tot_buckets; int cluster_mode; } ;


 TYPE_1__* CC ;
 int CLUSTER_MODE_FIRSTINT ;
 int CLUSTER_MODE_SECONDINT ;
 int CLUSTER_MODE_THIRDINT ;
 scalar_t__ NEWS_G_EXTENSION ;
 scalar_t__ NEWS_UG_EXTENSION ;
 int* Q ;
 int QL ;
 int* QN ;
 int* Rfirst ;
 scalar_t__* Rlen ;
 int assert (int) ;
 int split_factor ;

void set_rlen () {
  int i, x, y;

  for (i = 0; i < CC->tot_buckets; i++) {
    Rlen[i] = 0;
    Rfirst[i] = -1;
  }


  split_factor = (NEWS_UG_EXTENSION) ? CC->tot_buckets / 2 : CC->tot_buckets;

  for (i = QL-1; i >= 0; i--) {
   if ((NEWS_UG_EXTENSION || NEWS_G_EXTENSION)) {
     x = y = Q[i];
   } else {
    if ((CC->cluster_mode & 0xf) == CLUSTER_MODE_THIRDINT) {
      x = y = Q[3 * i + 2];
    } else if ((CC->cluster_mode & 0xf) == CLUSTER_MODE_SECONDINT) {
      x = y = Q[3 * i + 1];
    } else {
     assert ((CC->cluster_mode & 0xf) == CLUSTER_MODE_FIRSTINT);
     x = y = Q[3 * i];
    }
   }
    if (NEWS_UG_EXTENSION) {
      if (x >= 0) {
        x %= split_factor;
      } else {
        x = (-x % split_factor) + split_factor;
      }
    } else {
      if (x < 0) { x = -x; }
      x %= split_factor;
    }
    if (x < CC->tot_buckets) {
      QN[i] = Rfirst[x];
      Rfirst[x] = i;
      Rlen[x] ++;
    }
  }
}
