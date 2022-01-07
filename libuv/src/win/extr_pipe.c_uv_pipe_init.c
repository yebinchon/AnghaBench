
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_6__ {scalar_t__ payload_remaining; } ;
struct TYPE_7__ {int * non_overlapped_writes_tail; scalar_t__ ipc_xfer_queue_length; int ipc_xfer_queue; TYPE_1__ ipc_data_frame; scalar_t__ ipc_remote_pid; } ;
struct TYPE_8__ {TYPE_2__ conn; } ;
struct TYPE_9__ {int ipc; TYPE_3__ pipe; int * name; int handle; scalar_t__ reqs_pending; } ;
typedef TYPE_4__ uv_pipe_t ;
typedef int uv_loop_t ;


 int INVALID_HANDLE_VALUE ;
 int QUEUE_INIT (int *) ;
 int UV_NAMED_PIPE ;
 int uv_stream_init (int *,int *,int ) ;

int uv_pipe_init(uv_loop_t* loop, uv_pipe_t* handle, int ipc) {
  uv_stream_init(loop, (uv_stream_t*)handle, UV_NAMED_PIPE);

  handle->reqs_pending = 0;
  handle->handle = INVALID_HANDLE_VALUE;
  handle->name = ((void*)0);
  handle->pipe.conn.ipc_remote_pid = 0;
  handle->pipe.conn.ipc_data_frame.payload_remaining = 0;
  QUEUE_INIT(&handle->pipe.conn.ipc_xfer_queue);
  handle->pipe.conn.ipc_xfer_queue_length = 0;
  handle->ipc = ipc;
  handle->pipe.conn.non_overlapped_writes_tail = ((void*)0);

  return 0;
}
