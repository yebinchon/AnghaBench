
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ step; int running; scalar_t__ data; TYPE_2__* pl; } ;
typedef TYPE_1__ ktp_worker_t ;
struct TYPE_4__ {scalar_t__ n_steps; int n_workers; int mutex; int cv; int shared; scalar_t__ (* func ) (int ,scalar_t__,scalar_t__) ;TYPE_1__* workers; } ;
typedef TYPE_2__ ktp_t ;


 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_exit (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ stub1 (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void *ktp_worker(void *data)
{
 ktp_worker_t *w = (ktp_worker_t*)data;
 ktp_t *p = w->pl;
 while (w->step < p->n_steps) {

  pthread_mutex_lock(&p->mutex);
  for (;;) {
   int i;

   for (i = 0; i < p->n_workers; ++i) {
    if (w == &p->workers[i]) continue;
    if (p->workers[i].running && p->workers[i].step == w->step)
     break;
   }
   if (i == p->n_workers) break;
   pthread_cond_wait(&p->cv, &p->mutex);
  }
  w->running = 1;
  pthread_mutex_unlock(&p->mutex);


  w->data = p->func(p->shared, w->step, w->step? w->data : 0);


  pthread_mutex_lock(&p->mutex);
  w->step = w->step == p->n_steps - 1 || w->data? (w->step + 1) % p->n_steps : p->n_steps;
  w->running = 0;
  pthread_cond_broadcast(&p->cv);
  pthread_mutex_unlock(&p->mutex);
 }
 pthread_exit(0);
}
