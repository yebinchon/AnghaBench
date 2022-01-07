
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_loop_t ;
typedef scalar_t__ uv_handle_type ;
typedef int uv_handle_t ;
struct sockaddr {int dummy; } ;
struct server_ctx {int semaphore; } ;
struct ipc_server_ctx {unsigned int num_connects; int server_handle; int ipc_pipe; } ;


 int ASSERT (int) ;
 int IPC_PIPE_NAME ;
 int UV_RUN_DEFAULT ;
 scalar_t__ UV_TCP ;
 int ipc_connection_cb ;
 int listen_addr ;
 int uv_close (int *,int *) ;
 int * uv_default_loop () ;
 scalar_t__ uv_listen (int *,int,int ) ;
 scalar_t__ uv_pipe_bind (int *,int ) ;
 scalar_t__ uv_pipe_init (int *,int *,int) ;
 scalar_t__ uv_run (int *,int ) ;
 int uv_sem_post (int *) ;
 int uv_sem_wait (int *) ;
 scalar_t__ uv_tcp_bind (int *,struct sockaddr const*,int ) ;
 scalar_t__ uv_tcp_init (int *,int *) ;

__attribute__((used)) static void send_listen_handles(uv_handle_type type,
                                unsigned int num_servers,
                                struct server_ctx* servers) {
  struct ipc_server_ctx ctx;
  uv_loop_t* loop;
  unsigned int i;

  loop = uv_default_loop();
  ctx.num_connects = num_servers;

  if (type == UV_TCP) {
    ASSERT(0 == uv_tcp_init(loop, (uv_tcp_t*) &ctx.server_handle));
    ASSERT(0 == uv_tcp_bind((uv_tcp_t*) &ctx.server_handle,
                            (const struct sockaddr*) &listen_addr,
                            0));
  }
  else
    ASSERT(0);

  ASSERT(0 == uv_pipe_init(loop, &ctx.ipc_pipe, 1));
  ASSERT(0 == uv_pipe_bind(&ctx.ipc_pipe, IPC_PIPE_NAME));
  ASSERT(0 == uv_listen((uv_stream_t*) &ctx.ipc_pipe, 128, ipc_connection_cb));

  for (i = 0; i < num_servers; i++)
    uv_sem_post(&servers[i].semaphore);

  ASSERT(0 == uv_run(loop, UV_RUN_DEFAULT));
  uv_close((uv_handle_t*) &ctx.server_handle, ((void*)0));
  ASSERT(0 == uv_run(loop, UV_RUN_DEFAULT));

  for (i = 0; i < num_servers; i++)
    uv_sem_wait(&servers[i].semaphore);
}
