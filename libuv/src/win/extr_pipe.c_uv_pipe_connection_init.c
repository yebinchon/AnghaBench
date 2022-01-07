
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_7__ {int readfile_thread_lock; int * readfile_thread_handle; int * eof_timer; } ;
struct TYPE_8__ {TYPE_2__ conn; } ;
struct TYPE_6__ {TYPE_4__* data; } ;
struct TYPE_9__ {int flags; TYPE_3__ pipe; TYPE_1__ read_req; } ;
typedef TYPE_4__ uv_pipe_t ;


 int InitializeCriticalSection (int *) ;
 int UV_HANDLE_NON_OVERLAPPED_PIPE ;
 int UV_HANDLE_PIPESERVER ;
 int assert (int) ;
 int uv_connection_init (int *) ;

__attribute__((used)) static void uv_pipe_connection_init(uv_pipe_t* handle) {
  uv_connection_init((uv_stream_t*) handle);
  handle->read_req.data = handle;
  handle->pipe.conn.eof_timer = ((void*)0);
  assert(!(handle->flags & UV_HANDLE_PIPESERVER));
  if (handle->flags & UV_HANDLE_NON_OVERLAPPED_PIPE) {
    handle->pipe.conn.readfile_thread_handle = ((void*)0);
    InitializeCriticalSection(&handle->pipe.conn.readfile_thread_lock);
  }
}
