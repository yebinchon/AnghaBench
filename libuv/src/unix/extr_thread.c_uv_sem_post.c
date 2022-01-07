
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 scalar_t__ platform_needs_custom_semaphore ;
 int uv__custom_sem_post (int *) ;
 int uv__sem_post (int *) ;

void uv_sem_post(uv_sem_t* sem) {
  if (platform_needs_custom_semaphore)
    uv__custom_sem_post(sem);
  else
    uv__sem_post(sem);
}
