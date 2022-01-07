
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int run_ipc_send_recv_helper (int ,int ) ;
 int uv_default_loop () ;

int ipc_send_recv_helper(void) {
  int r;

  r = run_ipc_send_recv_helper(uv_default_loop(), 0);
  ASSERT(r == 0);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
