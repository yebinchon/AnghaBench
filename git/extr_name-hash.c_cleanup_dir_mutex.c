
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAZY_MAX_MUTEX ;
 int free (int *) ;
 int * lazy_dir_mutex_array ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void cleanup_dir_mutex(void)
{
 int j;

 for (j = 0; j < LAZY_MAX_MUTEX; j++)
  pthread_mutex_destroy(&lazy_dir_mutex_array[j]);

 free(lazy_dir_mutex_array);
}
