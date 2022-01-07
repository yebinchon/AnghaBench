
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct uv__work {int dummy; } ;
struct TYPE_9__ {struct uv__work work_req; int * loop; } ;
typedef TYPE_1__ uv_work_t ;
struct TYPE_10__ {int type; } ;
typedef TYPE_2__ uv_req_t ;
struct TYPE_11__ {struct uv__work work_req; int * loop; } ;
typedef TYPE_3__ uv_random_t ;
typedef int uv_loop_t ;
struct TYPE_12__ {struct uv__work work_req; int * loop; } ;
typedef TYPE_4__ uv_getnameinfo_t ;
struct TYPE_13__ {struct uv__work work_req; int * loop; } ;
typedef TYPE_5__ uv_getaddrinfo_t ;
struct TYPE_14__ {struct uv__work work_req; int * loop; } ;
typedef TYPE_6__ uv_fs_t ;


 int UV_EINVAL ;





 int uv__work_cancel (int *,TYPE_2__*,struct uv__work*) ;

int uv_cancel(uv_req_t* req) {
  struct uv__work* wreq;
  uv_loop_t* loop;

  switch (req->type) {
  case 132:
    loop = ((uv_fs_t*) req)->loop;
    wreq = &((uv_fs_t*) req)->work_req;
    break;
  case 131:
    loop = ((uv_getaddrinfo_t*) req)->loop;
    wreq = &((uv_getaddrinfo_t*) req)->work_req;
    break;
  case 130:
    loop = ((uv_getnameinfo_t*) req)->loop;
    wreq = &((uv_getnameinfo_t*) req)->work_req;
    break;
  case 129:
    loop = ((uv_random_t*) req)->loop;
    wreq = &((uv_random_t*) req)->work_req;
    break;
  case 128:
    loop = ((uv_work_t*) req)->loop;
    wreq = &((uv_work_t*) req)->work_req;
    break;
  default:
    return UV_EINVAL;
  }

  return uv__work_cancel(loop, req, wreq);
}
