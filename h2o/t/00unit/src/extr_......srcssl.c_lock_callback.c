
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_LOCK ;
 int CRYPTO_UNLOCK ;
 int assert (int) ;
 scalar_t__ mutexes ;
 int pthread_mutex_lock (scalar_t__) ;
 int pthread_mutex_unlock (scalar_t__) ;

__attribute__((used)) static void lock_callback(int mode, int n, const char *file, int line)
{
    if ((mode & CRYPTO_LOCK) != 0) {
        pthread_mutex_lock(mutexes + n);
    } else if ((mode & CRYPTO_UNLOCK) != 0) {
        pthread_mutex_unlock(mutexes + n);
    } else {
        assert(!"unexpected mode");
    }
}
