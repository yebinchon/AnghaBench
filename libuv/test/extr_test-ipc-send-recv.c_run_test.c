
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_thread_t ;
typedef int uv_process_t ;
struct TYPE_2__ {int connect_req; int channel; } ;


 int ASSERT (int) ;
 int TEST_PIPENAME_3 ;
 int UV_RUN_DEFAULT ;
 int connect_cb (int *,int ) ;
 TYPE_1__ ctx ;
 int ipc_send_recv_helper_threadproc ;
 int recv_cb_count ;
 int spawn_helper (int *,int *,char*) ;
 int uv_default_loop () ;
 int uv_pipe_connect (int *,int *,int ,int (*) (int *,int )) ;
 int uv_pipe_init (int ,int *,int) ;
 int uv_run (int ,int ) ;
 int uv_sleep (int) ;
 int uv_thread_create (int *,int ,void*) ;
 int uv_thread_join (int *) ;

__attribute__((used)) static int run_test(int inprocess) {
  uv_process_t process;
  uv_thread_t tid;
  int r;

  if (inprocess) {
    r = uv_thread_create(&tid, ipc_send_recv_helper_threadproc, (void *) 42);
    ASSERT(r == 0);

    uv_sleep(1000);

    r = uv_pipe_init(uv_default_loop(), &ctx.channel, 1);
    ASSERT(r == 0);

    uv_pipe_connect(&ctx.connect_req, &ctx.channel, TEST_PIPENAME_3, connect_cb);
  } else {
    spawn_helper(&ctx.channel, &process, "ipc_send_recv_helper");

    connect_cb(&ctx.connect_req, 0);
  }

  r = uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(r == 0);

  ASSERT(recv_cb_count == 2);

  if (inprocess) {
    r = uv_thread_join(&tid);
    ASSERT(r == 0);
  }

  return 0;
}
