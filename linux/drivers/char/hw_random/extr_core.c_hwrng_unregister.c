
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int cleanup_done; int list; } ;


 scalar_t__ cur_rng_set_by_user ;
 struct hwrng* current_rng ;
 int drop_current_rng () ;
 int enable_best_rng () ;
 scalar_t__ hwrng_fill ;
 int kthread_stop (scalar_t__) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rng_list ;
 int rng_mutex ;
 int wait_for_completion (int *) ;

void hwrng_unregister(struct hwrng *rng)
{
 int err;

 mutex_lock(&rng_mutex);

 list_del(&rng->list);
 if (current_rng == rng) {
  err = enable_best_rng();
  if (err) {
   drop_current_rng();
   cur_rng_set_by_user = 0;
  }
 }

 if (list_empty(&rng_list)) {
  mutex_unlock(&rng_mutex);
  if (hwrng_fill)
   kthread_stop(hwrng_fill);
 } else
  mutex_unlock(&rng_mutex);

 wait_for_completion(&rng->cleanup_done);
}
