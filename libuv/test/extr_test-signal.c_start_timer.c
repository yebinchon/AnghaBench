
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
struct timer_ctx {int signum; int handle; scalar_t__ ncalls; } ;


 int ASSERT (int) ;
 int timer_cb ;
 scalar_t__ uv_timer_init (int *,int *) ;
 scalar_t__ uv_timer_start (int *,int ,int,int) ;

__attribute__((used)) static void start_timer(uv_loop_t* loop, int signum, struct timer_ctx* ctx) {
  ctx->ncalls = 0;
  ctx->signum = signum;
  ASSERT(0 == uv_timer_init(loop, &ctx->handle));
  ASSERT(0 == uv_timer_start(&ctx->handle, timer_cb, 5, 5));
}
