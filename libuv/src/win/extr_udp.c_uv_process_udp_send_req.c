
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ type; scalar_t__ send_queue_size; int send_queue_count; } ;
typedef TYPE_3__ uv_udp_t ;
struct TYPE_13__ {scalar_t__ queued_bytes; } ;
struct TYPE_14__ {TYPE_1__ io; } ;
struct TYPE_16__ {int (* cb ) (TYPE_4__*,int ) ;TYPE_2__ u; } ;
typedef TYPE_4__ uv_udp_send_t ;
typedef int uv_loop_t ;


 int DECREASE_PENDING_REQ_COUNT (TYPE_3__*) ;
 int GET_REQ_SOCK_ERROR (TYPE_4__*) ;
 int REQ_SUCCESS (TYPE_4__*) ;
 int UNREGISTER_HANDLE_REQ (int *,TYPE_3__*,TYPE_4__*) ;
 scalar_t__ UV_UDP ;
 int assert (int) ;
 int stub1 (TYPE_4__*,int ) ;
 int uv_translate_sys_error (int) ;

void uv_process_udp_send_req(uv_loop_t* loop, uv_udp_t* handle,
    uv_udp_send_t* req) {
  int err;

  assert(handle->type == UV_UDP);

  assert(handle->send_queue_size >= req->u.io.queued_bytes);
  assert(handle->send_queue_count >= 1);
  handle->send_queue_size -= req->u.io.queued_bytes;
  handle->send_queue_count--;

  UNREGISTER_HANDLE_REQ(loop, handle, req);

  if (req->cb) {
    err = 0;
    if (!REQ_SUCCESS(req)) {
      err = GET_REQ_SOCK_ERROR(req);
    }
    req->cb(req, uv_translate_sys_error(err));
  }

  DECREASE_PENDING_REQ_COUNT(handle);
}
