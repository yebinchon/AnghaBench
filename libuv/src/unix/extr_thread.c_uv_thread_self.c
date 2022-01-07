
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_thread_t ;


 int pthread_self () ;

uv_thread_t uv_thread_self(void) {
  return pthread_self();
}
