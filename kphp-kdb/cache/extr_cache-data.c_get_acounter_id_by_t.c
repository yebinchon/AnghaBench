
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ T; } ;


 TYPE_1__* TAT ;
 int amortization_counter_types ;
 double fabs (scalar_t__) ;

__attribute__((used)) static int get_acounter_id_by_t (int T) {
  int i;
  for (i = 0; i < amortization_counter_types; i++) {
    if (fabs (TAT[i].T - T) < 0.5) {
      return i;
    }
  }
  return -1;
}
