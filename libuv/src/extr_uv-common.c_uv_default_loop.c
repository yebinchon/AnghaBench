
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int * default_loop_ptr ;
 int default_loop_struct ;
 scalar_t__ uv_loop_init (int *) ;

uv_loop_t* uv_default_loop(void) {
  if (default_loop_ptr != ((void*)0))
    return default_loop_ptr;

  if (uv_loop_init(&default_loop_struct))
    return ((void*)0);

  default_loop_ptr = &default_loop_struct;
  return default_loop_ptr;
}
