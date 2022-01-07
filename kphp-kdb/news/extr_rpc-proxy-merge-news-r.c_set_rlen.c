
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tot_buckets; } ;


 TYPE_1__* CC ;
 void** Q ;
 int* QN ;
 int Q_size ;
 void** R ;
 scalar_t__ R_common_len ;
 int* Rfirst ;
 scalar_t__* Rlen ;

__attribute__((used)) static void set_rlen (void) {
  int i, x;

  for (i = 0; i < CC->tot_buckets; i++) {
    Rlen[i] = 0;
    Rfirst[i] = -1;
  }

  int split_factor = CC->tot_buckets;
  R_common_len = 0;
  for (i = Q_size - 1; i >= 0; i--) {
    if (Q[2 * i + 1] < 0) {
      R[R_common_len++] = Q[2 * i];
      R[R_common_len++] = Q[2 * i + 1];
    } else {
      x = Q[2 * i];

      if (x < 0) { x = -x; }
      x %= split_factor;

      if (x < CC->tot_buckets) {
        QN[i] = Rfirst[x];
        Rfirst[x] = i;
        Rlen[x] ++;
      }
    }
  }
}
