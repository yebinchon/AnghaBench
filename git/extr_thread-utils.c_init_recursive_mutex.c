
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;
typedef int pthread_mutex_t ;


 int PTHREAD_MUTEX_RECURSIVE ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

int init_recursive_mutex(pthread_mutex_t *m)
{

 pthread_mutexattr_t a;
 int ret;

 ret = pthread_mutexattr_init(&a);
 if (!ret) {
  ret = pthread_mutexattr_settype(&a, PTHREAD_MUTEX_RECURSIVE);
  if (!ret)
   ret = pthread_mutex_init(m, &a);
  pthread_mutexattr_destroy(&a);
 }
 return ret;



}
