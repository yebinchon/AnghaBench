
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_3__ {struct poll_ctx* poll_ctx; } ;
typedef TYPE_1__ uv_fs_poll_t ;
struct poll_ctx {int path; } ;


 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int assert (int ) ;
 int memcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;
 int uv_is_active (int *) ;

int uv_fs_poll_getpath(uv_fs_poll_t* handle, char* buffer, size_t* size) {
  struct poll_ctx* ctx;
  size_t required_len;

  if (!uv_is_active((uv_handle_t*)handle)) {
    *size = 0;
    return UV_EINVAL;
  }

  ctx = handle->poll_ctx;
  assert(ctx != ((void*)0));

  required_len = strlen(ctx->path);
  if (required_len >= *size) {
    *size = required_len + 1;
    return UV_ENOBUFS;
  }

  memcpy(buffer, ctx->path, required_len);
  *size = required_len;
  buffer[required_len] = '\0';

  return 0;
}
