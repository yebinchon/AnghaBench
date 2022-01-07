
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_barrier_t ;


 int UV__ERR (int ) ;
 int pthread_barrier_init (int *,int *,unsigned int) ;

int uv_barrier_init(uv_barrier_t* barrier, unsigned int count) {
  return UV__ERR(pthread_barrier_init(barrier, ((void*)0), count));
}
