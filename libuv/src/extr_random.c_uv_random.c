
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t buflen; int work_req; void* buf; int * cb; scalar_t__ status; int * loop; } ;
typedef TYPE_1__ uv_random_t ;
typedef int * uv_random_cb ;
typedef int uv_loop_t ;


 int UV_E2BIG ;
 int UV_EINVAL ;
 int UV_RANDOM ;
 int UV__WORK_CPU ;
 int uv__random (void*,size_t) ;
 int uv__random_done ;
 int uv__random_work ;
 int uv__req_init (int *,TYPE_1__*,int ) ;
 int uv__work_submit (int *,int *,int ,int ,int ) ;

int uv_random(uv_loop_t* loop,
              uv_random_t* req,
              void *buf,
              size_t buflen,
              unsigned flags,
              uv_random_cb cb) {
  if (buflen > 0x7FFFFFFFu)
    return UV_E2BIG;

  if (flags != 0)
    return UV_EINVAL;

  if (cb == ((void*)0))
    return uv__random(buf, buflen);

  uv__req_init(loop, req, UV_RANDOM);
  req->loop = loop;
  req->status = 0;
  req->cb = cb;
  req->buf = buf;
  req->buflen = buflen;

  uv__work_submit(loop,
                  &req->work_req,
                  UV__WORK_CPU,
                  uv__random_work,
                  uv__random_done);

  return 0;
}
