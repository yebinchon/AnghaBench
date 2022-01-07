
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int accepted_fd; TYPE_2__* queued_fds; int ipc; } ;
typedef TYPE_1__ uv_pipe_t ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_2__ uv__stream_queued_fds_t ;



int uv_pipe_pending_count(uv_pipe_t* handle) {
  uv__stream_queued_fds_t* queued_fds;

  if (!handle->ipc)
    return 0;

  if (handle->accepted_fd == -1)
    return 0;

  if (handle->queued_fds == ((void*)0))
    return 1;

  queued_fds = handle->queued_fds;
  return queued_fds->offset + 1;
}
