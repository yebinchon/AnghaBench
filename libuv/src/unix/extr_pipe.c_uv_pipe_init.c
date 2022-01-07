
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_3__ {int ipc; int * pipe_fname; int * connect_req; int * shutdown_req; } ;
typedef TYPE_1__ uv_pipe_t ;
typedef int uv_loop_t ;


 int UV_NAMED_PIPE ;
 int uv__stream_init (int *,int *,int ) ;

int uv_pipe_init(uv_loop_t* loop, uv_pipe_t* handle, int ipc) {
  uv__stream_init(loop, (uv_stream_t*)handle, UV_NAMED_PIPE);
  handle->shutdown_req = ((void*)0);
  handle->connect_req = ((void*)0);
  handle->pipe_fname = ((void*)0);
  handle->ipc = ipc;
  return 0;
}
