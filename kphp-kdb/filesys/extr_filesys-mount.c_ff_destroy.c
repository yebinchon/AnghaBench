
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_mutex ;
 int ff_server_thread ;
 int ff_stop_server ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vkprintf (int,char*) ;

void ff_destroy (void *arg) {
  pthread_mutex_lock (&ff_mutex);
  vkprintf (2, "ff_destroy ()\n");
  ff_stop_server = 1;
  pthread_mutex_unlock (&ff_mutex);
  pthread_join (ff_server_thread, ((void*)0));
  pthread_mutex_destroy (&ff_mutex);
}
