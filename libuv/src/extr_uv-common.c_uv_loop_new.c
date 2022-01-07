
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int uv__free (int *) ;
 int * uv__malloc (int) ;
 scalar_t__ uv_loop_init (int *) ;

uv_loop_t* uv_loop_new(void) {
  uv_loop_t* loop;

  loop = uv__malloc(sizeof(*loop));
  if (loop == ((void*)0))
    return ((void*)0);

  if (uv_loop_init(loop)) {
    uv__free(loop);
    return ((void*)0);
  }

  return loop;
}
