
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_6__ {struct poll_ctx* poll_ctx; int * loop; } ;
typedef TYPE_1__ uv_fs_poll_t ;
typedef int uv_fs_poll_cb ;
struct TYPE_7__ {int flags; } ;
struct poll_ctx {unsigned int interval; struct poll_ctx* previous; int path; int fs_req; TYPE_2__ timer_handle; TYPE_1__* parent_handle; int start_time; int poll_cb; int * loop; } ;


 int UV_ENOMEM ;
 int UV_HANDLE_INTERNAL ;
 int memcpy (int ,char const*,size_t) ;
 int poll_cb ;
 size_t strlen (char const*) ;
 struct poll_ctx* uv__calloc (int,int) ;
 int uv__free (struct poll_ctx*) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__handle_unref (TYPE_2__*) ;
 int uv_fs_stat (int *,int *,int ,int ) ;
 scalar_t__ uv_is_active (int *) ;
 int uv_now (int *) ;
 int uv_timer_init (int *,TYPE_2__*) ;

int uv_fs_poll_start(uv_fs_poll_t* handle,
                     uv_fs_poll_cb cb,
                     const char* path,
                     unsigned int interval) {
  struct poll_ctx* ctx;
  uv_loop_t* loop;
  size_t len;
  int err;

  if (uv_is_active((uv_handle_t*)handle))
    return 0;

  loop = handle->loop;
  len = strlen(path);
  ctx = uv__calloc(1, sizeof(*ctx) + len);

  if (ctx == ((void*)0))
    return UV_ENOMEM;

  ctx->loop = loop;
  ctx->poll_cb = cb;
  ctx->interval = interval ? interval : 1;
  ctx->start_time = uv_now(loop);
  ctx->parent_handle = handle;
  memcpy(ctx->path, path, len + 1);

  err = uv_timer_init(loop, &ctx->timer_handle);
  if (err < 0)
    goto error;

  ctx->timer_handle.flags |= UV_HANDLE_INTERNAL;
  uv__handle_unref(&ctx->timer_handle);

  err = uv_fs_stat(loop, &ctx->fs_req, ctx->path, poll_cb);
  if (err < 0)
    goto error;

  if (handle->poll_ctx != ((void*)0))
    ctx->previous = handle->poll_ctx;
  handle->poll_ctx = ctx;
  uv__handle_start(handle);

  return 0;

error:
  uv__free(ctx);
  return err;
}
