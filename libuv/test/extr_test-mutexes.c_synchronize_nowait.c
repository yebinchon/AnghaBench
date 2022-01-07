
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int condvar ;
 int step ;
 int uv_cond_signal (int *) ;

__attribute__((used)) static void synchronize_nowait(void) {
  step += 1;
  uv_cond_signal(&condvar);
}
