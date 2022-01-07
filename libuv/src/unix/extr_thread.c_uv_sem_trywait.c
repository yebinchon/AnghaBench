
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 scalar_t__ platform_needs_custom_semaphore ;
 int uv__custom_sem_trywait (int *) ;
 int uv__sem_trywait (int *) ;

int uv_sem_trywait(uv_sem_t* sem) {
  if (platform_needs_custom_semaphore)
    return uv__custom_sem_trywait(sem);
  else
    return uv__sem_trywait(sem);
}
