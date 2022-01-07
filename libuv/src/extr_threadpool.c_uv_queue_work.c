
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int work_req; int after_work_cb; int * work_cb; int * loop; } ;
typedef TYPE_1__ uv_work_t ;
typedef int * uv_work_cb ;
typedef int uv_loop_t ;
typedef int uv_after_work_cb ;


 int UV_EINVAL ;
 int UV_WORK ;
 int UV__WORK_CPU ;
 int uv__queue_done ;
 int uv__queue_work ;
 int uv__req_init (int *,TYPE_1__*,int ) ;
 int uv__work_submit (int *,int *,int ,int ,int ) ;

int uv_queue_work(uv_loop_t* loop,
                  uv_work_t* req,
                  uv_work_cb work_cb,
                  uv_after_work_cb after_work_cb) {
  if (work_cb == ((void*)0))
    return UV_EINVAL;

  uv__req_init(loop, req, UV_WORK);
  req->loop = loop;
  req->work_cb = work_cb;
  req->after_work_cb = after_work_cb;
  uv__work_submit(loop,
                  &req->work_req,
                  UV__WORK_CPU,
                  uv__queue_work,
                  uv__queue_done);
  return 0;
}
