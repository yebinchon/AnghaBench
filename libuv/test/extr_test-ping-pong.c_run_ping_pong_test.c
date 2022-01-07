
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int UV_RUN_DEFAULT ;
 int completed_pingers ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;

__attribute__((used)) static int run_ping_pong_test(void) {
  uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(completed_pingers == 1);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
