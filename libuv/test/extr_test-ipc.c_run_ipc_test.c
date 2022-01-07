
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_read_cb ;
typedef int uv_process_t ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int UV_RUN_DEFAULT ;
 int channel ;
 int on_alloc ;
 int spawn_helper (int *,int *,char const*) ;
 int uv_default_loop () ;
 int uv_read_start (int *,int ,int ) ;
 int uv_run (int ,int ) ;

__attribute__((used)) static int run_ipc_test(const char* helper, uv_read_cb read_cb) {
  uv_process_t process;
  int r;

  spawn_helper(&channel, &process, helper);
  uv_read_start((uv_stream_t*)&channel, on_alloc, read_cb);

  r = uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(r == 0);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
