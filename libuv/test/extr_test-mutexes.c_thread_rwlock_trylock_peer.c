
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ UV_EBUSY ;
 int mutex ;
 int rwlock ;
 int synchronize () ;
 int synchronize_nowait () ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_rwlock_rdunlock (int *) ;
 scalar_t__ uv_rwlock_tryrdlock (int *) ;
 scalar_t__ uv_rwlock_trywrlock (int *) ;
 int uv_rwlock_wrunlock (int *) ;

__attribute__((used)) static void thread_rwlock_trylock_peer(void* unused) {
  (void) &unused;

  uv_mutex_lock(&mutex);


  ASSERT(UV_EBUSY == uv_rwlock_tryrdlock(&rwlock));
  ASSERT(UV_EBUSY == uv_rwlock_trywrlock(&rwlock));
  synchronize();


  ASSERT(0 == uv_rwlock_tryrdlock(&rwlock));
  uv_rwlock_rdunlock(&rwlock);
  ASSERT(UV_EBUSY == uv_rwlock_trywrlock(&rwlock));
  synchronize();


  ASSERT(0 == uv_rwlock_trywrlock(&rwlock));
  synchronize();


  uv_rwlock_wrunlock(&rwlock);
  ASSERT(0 == uv_rwlock_tryrdlock(&rwlock));
  synchronize();

  uv_rwlock_rdunlock(&rwlock);
  synchronize_nowait();
  uv_mutex_unlock(&mutex);
}
