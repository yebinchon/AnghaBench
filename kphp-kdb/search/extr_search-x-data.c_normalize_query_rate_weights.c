
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double weight; } ;


 TYPE_1__* QRW ;
 int query_rate_weights ;

__attribute__((used)) static int normalize_query_rate_weights (void) {
  int i;
  double s = 0.0;
  for (i = 0; i < query_rate_weights; i++) {
    s += QRW[i].weight;
  }
  if (s < 1e-9) { return -1; }
  s = 1.0 / s;
  for (i = 0; i < query_rate_weights; i++) {
    QRW[i].weight *= s;
  }
  return 0;
}
