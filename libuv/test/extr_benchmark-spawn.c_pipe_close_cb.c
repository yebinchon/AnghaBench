
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int ASSERT (int) ;
 int maybe_spawn () ;
 int pipe_open ;

__attribute__((used)) static void pipe_close_cb(uv_handle_t* pipe) {
  ASSERT(pipe_open == 1);
  pipe_open = 0;
  maybe_spawn();
}
