
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rate_weight {int p; } ;
typedef int item_t ;


 int get_rate_item_fast (int *,int ) ;

__attribute__((used)) static double rw_func_linear_reverse (item_t *I, struct rate_weight *R) {
  int rate = get_rate_item_fast (I, R->p);
  if (rate < 0) { rate = 0; }
  return rate * (1.0 / 2147483647.0);
}
