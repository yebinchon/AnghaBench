
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_4__ {int i; TYPE_2__* t; } ;
typedef TYPE_1__ ktf_worker_t ;
struct TYPE_5__ {void (* func ) (void*,long,int) ;int n_threads; long n; TYPE_1__* w; void* data; } ;
typedef TYPE_2__ kt_for_t ;


 scalar_t__ alloca (int) ;
 int ktf_worker ;
 int pthread_create (int *,int ,int ,TYPE_1__*) ;
 int pthread_join (int ,int ) ;

void kt_for(int n_threads, void (*func)(void*,long,int), void *data, long n)
{
 int i;
 kt_for_t t;
 pthread_t *tid;
 t.func = func, t.data = data, t.n_threads = n_threads, t.n = n;
 t.w = (ktf_worker_t*)alloca(n_threads * sizeof(ktf_worker_t));
 tid = (pthread_t*)alloca(n_threads * sizeof(pthread_t));
 for (i = 0; i < n_threads; ++i)
  t.w[i].t = &t, t.w[i].i = i;
 for (i = 0; i < n_threads; ++i) pthread_create(&tid[i], 0, ktf_worker, &t.w[i]);
 for (i = 0; i < n_threads; ++i) pthread_join(tid[i], 0);
}
