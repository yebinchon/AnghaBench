
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 int ReleaseSemaphore (int ,int,int *) ;
 int abort () ;

void uv_sem_post(uv_sem_t* sem) {
  if (!ReleaseSemaphore(*sem, 1, ((void*)0)))
    abort();
}
