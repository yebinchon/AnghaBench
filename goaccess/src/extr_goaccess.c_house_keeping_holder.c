
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;


 scalar_t__ active_gdns ;
 int free_holder (int *) ;
 int free_storage () ;
 int gdns_free_queue () ;
 TYPE_1__ gdns_thread ;
 int holder ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
house_keeping_holder (void)
{

  pthread_mutex_lock (&gdns_thread.mutex);


  active_gdns = 0;

  free_holder (&holder);

  gdns_free_queue ();

  free_storage ();

  pthread_mutex_unlock (&gdns_thread.mutex);
}
