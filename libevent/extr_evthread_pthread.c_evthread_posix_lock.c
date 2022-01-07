
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 unsigned int EVTHREAD_TRY ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_trylock (int *) ;

__attribute__((used)) static int
evthread_posix_lock(unsigned mode, void *lock_)
{
 pthread_mutex_t *lock = lock_;
 if (mode & EVTHREAD_TRY)
  return pthread_mutex_trylock(lock);
 else
  return pthread_mutex_lock(lock);
}
