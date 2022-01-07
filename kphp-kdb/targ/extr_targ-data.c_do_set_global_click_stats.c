
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct views_clicks_ll {long long views; long long clicks; } ;
struct lev_targ_global_click_stats {int stats; } ;


 int LEV_TARG_GLOBAL_CLICK_STATS ;
 int MAX_AD_VIEWS ;
 struct lev_targ_global_click_stats* alloc_log_event (int ,int,int) ;
 int fprintf (int ,char*,int) ;
 int memcpy (int ,struct views_clicks_ll*,int) ;
 int set_global_click_stats (struct lev_targ_global_click_stats*) ;
 int stderr ;

int do_set_global_click_stats (int len, struct views_clicks_ll *A) {
  int i;
  fprintf (stderr, "do_set_global_click_stats(%d)\n", len);
  if (len != MAX_AD_VIEWS) {
    return 0;
  }
  long long sum_v = 0, sum_c = 0;
  for (i = 0; i < MAX_AD_VIEWS; i++) {
    if (A[i].views < 0 || A[i].clicks < 0 || A[i].clicks > A[i].views || A[i].views > (long long) 1e15) {
      return 0;
    }
    if (i > 0) {
      sum_v += A[i].views;
      sum_c += A[i].clicks;
      if (sum_v > (long long) 1e15) {
        return 0;
      }
    }
  }
  if (sum_v != A[0].views || sum_c != A[0].clicks) {
    return 0;
  }
  struct lev_targ_global_click_stats *E = alloc_log_event (LEV_TARG_GLOBAL_CLICK_STATS, len * 16 + 8, len);
  memcpy (E->stats, A, len * 16);
  return set_global_click_stats (E);
}
