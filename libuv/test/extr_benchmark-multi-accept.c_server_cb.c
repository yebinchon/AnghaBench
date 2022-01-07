
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct server_ctx {int server_handle; int semaphore; int async_handle; } ;


 int ASSERT (int) ;
 int UV_RUN_DEFAULT ;
 int get_listen_handle (int *,int *) ;
 int sv_async_cb ;
 int sv_connection_cb ;
 scalar_t__ uv_async_init (int *,int *,int ) ;
 scalar_t__ uv_listen (int *,int,int ) ;
 int uv_loop_close (int *) ;
 scalar_t__ uv_loop_init (int *) ;
 scalar_t__ uv_run (int *,int ) ;
 int uv_sem_post (int *) ;
 int uv_sem_wait (int *) ;
 int uv_unref (int *) ;

__attribute__((used)) static void server_cb(void *arg) {
  struct server_ctx *ctx;
  uv_loop_t loop;

  ctx = arg;
  ASSERT(0 == uv_loop_init(&loop));

  ASSERT(0 == uv_async_init(&loop, &ctx->async_handle, sv_async_cb));
  uv_unref((uv_handle_t*) &ctx->async_handle);


  uv_sem_wait(&ctx->semaphore);
  get_listen_handle(&loop, (uv_stream_t*) &ctx->server_handle);
  uv_sem_post(&ctx->semaphore);


  ASSERT(0 == uv_listen((uv_stream_t*) &ctx->server_handle,
                        128,
                        sv_connection_cb));
  ASSERT(0 == uv_run(&loop, UV_RUN_DEFAULT));

  uv_loop_close(&loop);
}
