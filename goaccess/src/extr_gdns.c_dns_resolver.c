
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int not_empty; } ;


 int gdns_queue ;
 TYPE_1__ gdns_thread ;
 int gqueue_enqueue (int ,char*) ;
 int gqueue_find (int ,char*) ;
 int gqueue_full (int ) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
dns_resolver (char *addr)
{
  pthread_mutex_lock (&gdns_thread.mutex);

  if (!gqueue_full (gdns_queue) && !gqueue_find (gdns_queue, addr)) {

    gqueue_enqueue (gdns_queue, addr);
    pthread_cond_broadcast (&gdns_thread.not_empty);
  }
  pthread_mutex_unlock (&gdns_thread.mutex);
}
