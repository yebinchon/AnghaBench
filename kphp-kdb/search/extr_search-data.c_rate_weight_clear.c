
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int p; } ;
struct TYPE_3__ {int p; } ;


 TYPE_2__ QRP ;
 TYPE_1__ QRT ;
 scalar_t__ query_rate_weights ;

__attribute__((used)) static void rate_weight_clear (void) {
  query_rate_weights = 0;
  QRT.p = -1;
  QRP.p = -1;
}
