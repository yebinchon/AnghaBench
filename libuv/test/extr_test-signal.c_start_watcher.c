
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
struct signal_ctx {int signum; int one_shot; int handle; int stop_or_close; scalar_t__ ncalls; } ;


 int ASSERT (int) ;
 int CLOSE ;
 int signal_cb ;
 int signal_cb_one_shot ;
 scalar_t__ uv_signal_init (int *,int *) ;
 scalar_t__ uv_signal_start (int *,int ,int) ;
 scalar_t__ uv_signal_start_oneshot (int *,int ,int) ;

__attribute__((used)) static void start_watcher(uv_loop_t* loop,
                          int signum,
                          struct signal_ctx* ctx,
                          int one_shot) {
  ctx->ncalls = 0;
  ctx->signum = signum;
  ctx->stop_or_close = CLOSE;
  ctx->one_shot = one_shot;
  ASSERT(0 == uv_signal_init(loop, &ctx->handle));
  if (one_shot)
    ASSERT(0 == uv_signal_start_oneshot(&ctx->handle, signal_cb_one_shot, signum));
  else
    ASSERT(0 == uv_signal_start(&ctx->handle, signal_cb, signum));
}
