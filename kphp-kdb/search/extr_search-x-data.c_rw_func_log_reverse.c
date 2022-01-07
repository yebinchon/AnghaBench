
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rate_weight {int p; } ;
struct item {int dummy; } ;


 scalar_t__ INT_MIN ;
 unsigned int get_rate_item_fast (struct item*,int ) ;
 double log (unsigned int) ;

__attribute__((used)) static double rw_func_log_reverse (struct item *I, struct rate_weight *R) {
  unsigned rate = get_rate_item_fast (I, R->p);
  rate -= INT_MIN;
  if (rate == -1U) { return 1.0; }
  return (log (rate + 1) * 0.04508422002825);
}
