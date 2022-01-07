
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int assert (int) ;
 int * default_loop_ptr ;
 int uv__free (int *) ;
 int uv_loop_close (int *) ;

void uv_loop_delete(uv_loop_t* loop) {
  uv_loop_t* default_loop;
  int err;

  default_loop = default_loop_ptr;

  err = uv_loop_close(loop);
  (void) err;
  assert(err == 0);
  if (loop != default_loop)
    uv__free(loop);
}
