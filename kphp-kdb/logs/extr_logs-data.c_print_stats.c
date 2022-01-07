
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int ) ;
 int * stat_result ;
 int stats_cnt ;

void print_stats (void) {
  int i;
  for (i = 0; i < stats_cnt; i++) {
    printf ("%lld\n", stat_result[i]);
  }
}
