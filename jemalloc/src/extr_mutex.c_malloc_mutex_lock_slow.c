
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int nstime_t ;
struct TYPE_6__ {scalar_t__ max_n_thds; int max_wait_time; int tot_wait_time; int n_wait_times; int n_waiting_thds; int n_spin_acquired; } ;
typedef TYPE_1__ mutex_prof_data_t ;
struct TYPE_7__ {int locked; TYPE_1__ prof_data; } ;
typedef TYPE_2__ malloc_mutex_t ;


 int ATOMIC_RELAXED ;
 int MALLOC_MUTEX_MAX_SPIN ;
 int NSTIME_ZERO_INITIALIZER ;
 scalar_t__ atomic_fetch_add_u32 (int *,int,int ) ;
 int atomic_fetch_sub_u32 (int *,int,int ) ;
 int atomic_load_b (int *,int ) ;
 int config_stats ;
 int malloc_mutex_lock_final (TYPE_2__*) ;
 int malloc_mutex_trylock_final (TYPE_2__*) ;
 int ncpus ;
 int nstime_add (int *,int *) ;
 scalar_t__ nstime_compare (int *,int *) ;
 int nstime_copy (int *,int *) ;
 int nstime_subtract (int *,int *) ;
 int nstime_update (int *) ;
 int spin_cpu_spinwait () ;

void
malloc_mutex_lock_slow(malloc_mutex_t *mutex) {
 mutex_prof_data_t *data = &mutex->prof_data;
 nstime_t before = NSTIME_ZERO_INITIALIZER;

 if (ncpus == 1) {
  goto label_spin_done;
 }

 int cnt = 0, max_cnt = MALLOC_MUTEX_MAX_SPIN;
 do {
  spin_cpu_spinwait();
  if (!atomic_load_b(&mutex->locked, ATOMIC_RELAXED)
                    && !malloc_mutex_trylock_final(mutex)) {
   data->n_spin_acquired++;
   return;
  }
 } while (cnt++ < max_cnt);

 if (!config_stats) {

  malloc_mutex_lock_final(mutex);
  return;
 }
label_spin_done:
 nstime_update(&before);

 nstime_t after;
 nstime_copy(&after, &before);
 uint32_t n_thds = atomic_fetch_add_u32(&data->n_waiting_thds, 1,
     ATOMIC_RELAXED) + 1;

 if (!malloc_mutex_trylock_final(mutex)) {
  atomic_fetch_sub_u32(&data->n_waiting_thds, 1, ATOMIC_RELAXED);
  data->n_spin_acquired++;
  return;
 }


 malloc_mutex_lock_final(mutex);

 atomic_fetch_sub_u32(&data->n_waiting_thds, 1, ATOMIC_RELAXED);
 nstime_update(&after);

 nstime_t delta;
 nstime_copy(&delta, &after);
 nstime_subtract(&delta, &before);

 data->n_wait_times++;
 nstime_add(&data->tot_wait_time, &delta);
 if (nstime_compare(&data->max_wait_time, &delta) < 0) {
  nstime_copy(&data->max_wait_time, &delta);
 }
 if (n_thds > data->max_n_thds) {
  data->max_n_thds = n_thds;
 }
}
