
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_loop_t ;
struct ipc_client_ctx {int ipc_pipe; int connect_req; TYPE_1__* server_handle; } ;


 int ASSERT (int) ;
 int IPC_PIPE_NAME ;
 int UV_RUN_DEFAULT ;
 int ipc_connect_cb ;
 int uv_pipe_connect (int *,int *,int ,int ) ;
 scalar_t__ uv_pipe_init (int *,int *,int) ;
 scalar_t__ uv_run (int *,int ) ;

__attribute__((used)) static void get_listen_handle(uv_loop_t* loop, uv_stream_t* server_handle) {
  struct ipc_client_ctx ctx;

  ctx.server_handle = server_handle;
  ctx.server_handle->data = "server handle";

  ASSERT(0 == uv_pipe_init(loop, &ctx.ipc_pipe, 1));
  uv_pipe_connect(&ctx.connect_req,
                  &ctx.ipc_pipe,
                  IPC_PIPE_NAME,
                  ipc_connect_cb);
  ASSERT(0 == uv_run(loop, UV_RUN_DEFAULT));
}
