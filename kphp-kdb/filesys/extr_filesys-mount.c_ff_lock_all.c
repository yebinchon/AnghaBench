
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_mutex ;
 int pthread_mutex_lock (int *) ;

void ff_lock_all (void) {
  pthread_mutex_lock (&ff_mutex);
}
