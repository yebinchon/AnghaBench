
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int flags; } ;
typedef TYPE_1__ uv_stream_t ;


 int UV_EINVAL ;
 int UV_HANDLE_BLOCKING_WRITES ;
 scalar_t__ UV_NAMED_PIPE ;

int uv_stream_set_blocking(uv_stream_t* handle, int blocking) {
  if (handle->type != UV_NAMED_PIPE)
    return UV_EINVAL;

  if (blocking != 0)
    handle->flags |= UV_HANDLE_BLOCKING_WRITES;
  else
    handle->flags &= ~UV_HANDLE_BLOCKING_WRITES;

  return 0;
}
