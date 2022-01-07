
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 int glibc_version_check ;
 int glibc_version_check_once ;
 scalar_t__ platform_needs_custom_semaphore ;
 int uv__custom_sem_init (int *,unsigned int) ;
 int uv__sem_init (int *,unsigned int) ;
 int uv_once (int *,int ) ;

int uv_sem_init(uv_sem_t* sem, unsigned int value) {




  if (platform_needs_custom_semaphore)
    return uv__custom_sem_init(sem, value);
  else
    return uv__sem_init(sem, value);
}
