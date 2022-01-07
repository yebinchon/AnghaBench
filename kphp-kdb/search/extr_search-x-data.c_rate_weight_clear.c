
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int weight; } ;


 TYPE_1__* QRW ;
 int query_rate_weights ;

__attribute__((used)) static void rate_weight_clear (int text_weight) {
  QRW[0].weight = text_weight;
  query_rate_weights = 1;
}
