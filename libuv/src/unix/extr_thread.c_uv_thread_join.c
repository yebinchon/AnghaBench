
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_thread_t ;


 int UV__ERR (int ) ;
 int pthread_join (int ,int *) ;

int uv_thread_join(uv_thread_t *tid) {
  return UV__ERR(pthread_join(*tid, ((void*)0)));
}
