
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tr2tls_mutex ;

int tr2tls_locked_increment(int *p)
{
 int current_value;

 pthread_mutex_lock(&tr2tls_mutex);
 current_value = *p;
 *p = current_value + 1;
 pthread_mutex_unlock(&tr2tls_mutex);

 return current_value;
}
