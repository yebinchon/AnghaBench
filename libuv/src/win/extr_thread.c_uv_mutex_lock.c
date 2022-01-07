
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_mutex_t ;


 int EnterCriticalSection (int *) ;

void uv_mutex_lock(uv_mutex_t* mutex) {
  EnterCriticalSection(mutex);
}
