
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * lazy_dir_mutex_array ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void unlock_dir_mutex(int j)
{
 pthread_mutex_unlock(&lazy_dir_mutex_array[j]);
}
