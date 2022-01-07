
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;


 int ASSERT (int) ;
 int run_ipc_send_recv_helper (int *,int) ;
 int uv_loop_close (int *) ;
 int uv_loop_init (int *) ;

void ipc_send_recv_helper_threadproc(void* arg) {
  int r;
  uv_loop_t loop;

  r = uv_loop_init(&loop);
  ASSERT(r == 0);

  r = run_ipc_send_recv_helper(&loop, 1);
  ASSERT(r == 0);

  r = uv_loop_close(&loop);
  ASSERT(r == 0);
}
