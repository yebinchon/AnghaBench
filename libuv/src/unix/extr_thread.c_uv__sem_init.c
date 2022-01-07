
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_sem_t ;


 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ sem_init (int *,int ,unsigned int) ;

__attribute__((used)) static int uv__sem_init(uv_sem_t* sem, unsigned int value) {
  if (sem_init(sem, 0, value))
    return UV__ERR(errno);
  return 0;
}
