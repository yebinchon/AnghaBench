
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 int abort () ;
 scalar_t__ sem_destroy (int *) ;

__attribute__((used)) static void uv__sem_destroy(uv_sem_t* sem) {
  if (sem_destroy(sem))
    abort();
}
