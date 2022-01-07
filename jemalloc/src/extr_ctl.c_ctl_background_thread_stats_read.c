
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_5__ {int max_counter_per_bg_thd; int run_interval; } ;
typedef TYPE_1__ background_thread_stats_t ;
struct TYPE_6__ {int * mutex_prof_data; TYPE_1__ background_thread; } ;


 scalar_t__ background_thread_stats_read (int *,TYPE_1__*) ;
 TYPE_3__* ctl_stats ;
 size_t global_prof_mutex_max_per_bg_thd ;
 int have_background_thread ;
 int malloc_mutex_prof_copy (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int nstime_init (int *,int ) ;

__attribute__((used)) static void
ctl_background_thread_stats_read(tsdn_t *tsdn) {
 background_thread_stats_t *stats = &ctl_stats->background_thread;
 if (!have_background_thread ||
     background_thread_stats_read(tsdn, stats)) {
  memset(stats, 0, sizeof(background_thread_stats_t));
  nstime_init(&stats->run_interval, 0);
 }
 malloc_mutex_prof_copy(
     &ctl_stats->mutex_prof_data[global_prof_mutex_max_per_bg_thd],
     &stats->max_counter_per_bg_thd);
}
