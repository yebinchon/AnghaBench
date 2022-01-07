
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * values; } ;
typedef TYPE_1__ weights_counters_t ;


 int fabs (int ) ;

__attribute__((used)) static int weights_counters_is_zero (weights_counters_t *C) {
  int i;
  for (i = 0; i < 32; i++) {
    if (fabs (C->values[i]) > 1e-9) {
      return 0;
    }
  }
  return 1;
}
