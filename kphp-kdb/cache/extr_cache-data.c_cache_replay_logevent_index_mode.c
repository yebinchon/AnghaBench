
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;


 int cache_replay_logevent (struct lev_generic*,int) ;
 int cache_save_pseudo_index () ;
 int exit (int ) ;
 scalar_t__ index_timestamp ;
 scalar_t__ log_last_ts ;

int cache_replay_logevent_index_mode (struct lev_generic *E, int size) {
  if (log_last_ts >= index_timestamp) {
    cache_save_pseudo_index ();
    exit (0);
  }
  return cache_replay_logevent (E, size);
}
