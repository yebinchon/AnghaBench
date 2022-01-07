
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 scalar_t__ EINTR ;
 int abort () ;
 scalar_t__ errno ;
 int sem_wait (int *) ;

__attribute__((used)) static void uv__sem_wait(uv_sem_t* sem) {
  int r;

  do
    r = sem_wait(sem);
  while (r == -1 && errno == EINTR);

  if (r)
    abort();
}
