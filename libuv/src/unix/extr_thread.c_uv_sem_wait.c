
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 scalar_t__ platform_needs_custom_semaphore ;
 int uv__custom_sem_wait (int *) ;
 int uv__sem_wait (int *) ;

void uv_sem_wait(uv_sem_t* sem) {
  if (platform_needs_custom_semaphore)
    uv__custom_sem_wait(sem);
  else
    uv__sem_wait(sem);
}
