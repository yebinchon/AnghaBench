
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tot_buckets; int cluster_mode; } ;


 TYPE_1__* CC ;
 int MAX_NEWS_BUCKETS ;
 int* Q ;
 int* QN ;
 int Q_size ;
 int* Rfirst ;
 scalar_t__* Rlen ;
 int assert (int) ;

void set_rlen_ug (int ug_mode) {
  assert (CC->tot_buckets <= MAX_NEWS_BUCKETS);
  int i;
  for (i = 0; i < CC->tot_buckets; i++) {
    Rlen[i] = 0;
    Rfirst[i] = -1;
  }



  int split_factor = (ug_mode != 0) ? CC->tot_buckets : CC->tot_buckets / 2;

  for (i = Q_size - 1; i >= 0; i--) {
    int x;
    if (ug_mode <= 0) {
      x = Q[i];
    } else {
      int t = (CC->cluster_mode & 7);
      switch (t) {
      case 2:
        x = Q[3 * i + 1];
        break;
      case 3:
        x = Q[3 * i + 2];
        break;
      default:
        x = Q[3 * i];
        break;
      }
    }
    if (ug_mode == 0) {
      if (x >= 0) {
        x %= split_factor;
      } else {
        x = (-x % split_factor) + split_factor;
      }
    } else {
      if (x < 0) { x = -x; }
      if (x < 0) { x = 0; }
      x %= split_factor;
    }
    assert (x >= 0 && x < CC->tot_buckets);
    QN[i] = Rfirst[x];
    Rfirst[x] = i;
    Rlen[x] ++;
  }
}
