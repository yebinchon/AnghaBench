
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int MAX_WRITE_HANDLES ;
 int PIPE ;
 int TARGET_CONNECTIONS ;
 int UV_RUN_DEFAULT ;
 int loop ;
 int maybe_connect_some () ;
 int type ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;

__attribute__((used)) static void pipe_pump(int n) {
  ASSERT(n <= MAX_WRITE_HANDLES);
  TARGET_CONNECTIONS = n;
  type = PIPE;

  loop = uv_default_loop();


  maybe_connect_some();

  uv_run(loop, UV_RUN_DEFAULT);

  MAKE_VALGRIND_HAPPY();
}
