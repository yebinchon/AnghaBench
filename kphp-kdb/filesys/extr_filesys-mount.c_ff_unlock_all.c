
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_mutex ;
 int pthread_mutex_unlock (int *) ;

void ff_unlock_all (void) {
  pthread_mutex_unlock (&ff_mutex);
}
