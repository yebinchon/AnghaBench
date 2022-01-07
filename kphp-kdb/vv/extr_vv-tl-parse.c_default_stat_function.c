
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prepare_stats (int ,char*,int) ;
 int tl_store_stats (char*,int ) ;

void default_stat_function (void) {
  static char buf[(1 << 12)];
  prepare_stats (0, buf, (1 << 12) - 2);
  tl_store_stats (buf, 0);
}
