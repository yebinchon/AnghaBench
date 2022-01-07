
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int UV_EAGAIN ;
 int abort () ;
 scalar_t__ errno ;
 int sem_trywait (int *) ;

__attribute__((used)) static int uv__sem_trywait(uv_sem_t* sem) {
  int r;

  do
    r = sem_trywait(sem);
  while (r == -1 && errno == EINTR);

  if (r) {
    if (errno == EAGAIN)
      return UV_EAGAIN;
    abort();
  }

  return 0;
}
