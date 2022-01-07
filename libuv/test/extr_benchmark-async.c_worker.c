
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int loop; int main_async; } ;


 int ASSERT (int) ;
 int UV_RUN_DEFAULT ;
 scalar_t__ uv_async_send (int *) ;
 int uv_loop_close (int *) ;
 scalar_t__ uv_run (int *,int ) ;

__attribute__((used)) static void worker(void* arg) {
  struct ctx* ctx = arg;
  ASSERT(0 == uv_async_send(&ctx->main_async));
  ASSERT(0 == uv_run(&ctx->loop, UV_RUN_DEFAULT));
  uv_loop_close(&ctx->loop);
}
