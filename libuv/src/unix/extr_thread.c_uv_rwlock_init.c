
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_rwlock_t ;


 int UV__ERR (int ) ;
 int pthread_rwlock_init (int *,int *) ;

int uv_rwlock_init(uv_rwlock_t* rwlock) {
  return UV__ERR(pthread_rwlock_init(rwlock, ((void*)0)));
}
