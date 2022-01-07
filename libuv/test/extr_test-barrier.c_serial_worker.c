
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_barrier_t ;


 int uv_barrier_destroy (int *) ;
 scalar_t__ uv_barrier_wait (int *) ;
 int uv_sleep (int) ;

__attribute__((used)) static void serial_worker(void* data) {
  uv_barrier_t* barrier;

  barrier = data;
  if (uv_barrier_wait(barrier) > 0)
    uv_barrier_destroy(barrier);

  uv_sleep(100);
}
