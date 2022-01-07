
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {TYPE_3__ exit_req; scalar_t__ exit_cb_pending; int * child_stdio_buffer; void* process_handle; void* wait_handle; scalar_t__ exit_signal; scalar_t__ pid; int * exit_cb; } ;
typedef TYPE_1__ uv_process_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 void* INVALID_HANDLE_VALUE ;
 int UV_PROCESS ;
 int UV_PROCESS_EXIT ;
 int UV_REQ_INIT (TYPE_3__*,int ) ;
 int uv__handle_init (int *,int *,int ) ;

__attribute__((used)) static void uv_process_init(uv_loop_t* loop, uv_process_t* handle) {
  uv__handle_init(loop, (uv_handle_t*) handle, UV_PROCESS);
  handle->exit_cb = ((void*)0);
  handle->pid = 0;
  handle->exit_signal = 0;
  handle->wait_handle = INVALID_HANDLE_VALUE;
  handle->process_handle = INVALID_HANDLE_VALUE;
  handle->child_stdio_buffer = ((void*)0);
  handle->exit_cb_pending = 0;

  UV_REQ_INIT(&handle->exit_req, UV_PROCESS_EXIT);
  handle->exit_req.data = handle;
}
