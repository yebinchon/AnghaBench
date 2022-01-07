
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int LAZY_MAX_MUTEX ;
 int init_recursive_mutex (int *) ;
 int * lazy_dir_mutex_array ;
 int * xcalloc (int,int) ;

__attribute__((used)) static void init_dir_mutex(void)
{
 int j;

 lazy_dir_mutex_array = xcalloc(LAZY_MAX_MUTEX, sizeof(pthread_mutex_t));

 for (j = 0; j < LAZY_MAX_MUTEX; j++)
  init_recursive_mutex(&lazy_dir_mutex_array[j]);
}
