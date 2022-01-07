
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; int weight; int f; } ;


 int FLAG_REVERSE_SEARCH ;
 TYPE_1__* QRW ;
 int get_sorting_mode (int) ;
 int query_rate_weights ;
 int rw_func_linear ;
 int rw_func_linear_reverse ;
 int rw_func_log ;
 int rw_func_log_reverse ;

__attribute__((used)) static int rate_weight_add (int func_tp, int tp, int weight) {
  if (query_rate_weights >= 16) { return -3; }
  int p = get_sorting_mode (tp);
  if (p < 0) { return -1; }
  int reverse_search = p & FLAG_REVERSE_SEARCH;
  QRW[query_rate_weights].p = p & 15;
  QRW[query_rate_weights].weight = weight;
  if (func_tp == 'L') {
    QRW[query_rate_weights].f = reverse_search ? rw_func_log_reverse : rw_func_log;
  } else if (func_tp == 'l') {
    QRW[query_rate_weights].f = reverse_search ? rw_func_linear_reverse : rw_func_linear;
  } else {
    return -2;
  }

  query_rate_weights++;
  return 0;
}
