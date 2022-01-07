
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {double weight; int p; } ;
struct TYPE_3__ {double weight; } ;


 TYPE_2__ QRP ;
 TYPE_1__* QRW ;
 int query_rate_weights ;

int normalize_query_rate_weights (void) {
  int i;
  double s = 0.0;

  if (!QRP.p) {
    QRW[query_rate_weights++].weight = QRP.weight;
  }

  if (!query_rate_weights) {
    return 0;
  }

  for (i = 0; i < query_rate_weights; i++) {
    s += QRW[i].weight;
  }

  if (s < 1e-9) {
    query_rate_weights = 0;
    return 0;
  }

  s = 1.0 / s;
  for (i = 0; i < query_rate_weights; i++) {
    QRW[i].weight *= s;
  }

  if (!QRP.p) {
    query_rate_weights--;
    QRP.weight = QRW[query_rate_weights].weight;
  }

  return 0;
}
