
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_4__ {struct poll_ctx* poll_ctx; } ;
typedef TYPE_1__ uv_fs_poll_t ;
struct poll_ctx {int timer_handle; TYPE_1__* parent_handle; } ;


 int assert (int) ;
 int timer_close_cb ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv_close (int *,int ) ;
 scalar_t__ uv_is_active (int *) ;

int uv_fs_poll_stop(uv_fs_poll_t* handle) {
  struct poll_ctx* ctx;

  if (!uv_is_active((uv_handle_t*)handle))
    return 0;

  ctx = handle->poll_ctx;
  assert(ctx != ((void*)0));
  assert(ctx->parent_handle == handle);




  if (uv_is_active((uv_handle_t*)&ctx->timer_handle))
    uv_close((uv_handle_t*)&ctx->timer_handle, timer_close_cb);

  uv__handle_stop(handle);

  return 0;
}
