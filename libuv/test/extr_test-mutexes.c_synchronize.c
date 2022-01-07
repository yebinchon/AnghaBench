
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int condvar ;
 int mutex ;
 int step ;
 int synchronize_nowait () ;
 int uv_cond_wait (int *,int *) ;

__attribute__((used)) static void synchronize(void) {
  int current;

  synchronize_nowait();

  for (current = step; current == step; uv_cond_wait(&condvar, &mutex));
  ASSERT(step == current + 1);
}
