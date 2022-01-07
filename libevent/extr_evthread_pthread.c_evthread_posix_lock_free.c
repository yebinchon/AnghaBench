
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int mm_free (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void
evthread_posix_lock_free(void *lock_, unsigned locktype)
{
 pthread_mutex_t *lock = lock_;
 pthread_mutex_destroy(lock);
 mm_free(lock);
}
