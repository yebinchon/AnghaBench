
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int write_index; int nbufs; TYPE_1__* handle; int * bufs; } ;
typedef TYPE_2__ uv_write_t ;
struct TYPE_4__ {size_t write_queue_size; } ;


 int assert (int) ;
 size_t uv__count_bufs (int *,int) ;

__attribute__((used)) static size_t uv__write_req_size(uv_write_t* req) {
  size_t size;

  assert(req->bufs != ((void*)0));
  size = uv__count_bufs(req->bufs + req->write_index,
                        req->nbufs - req->write_index);
  assert(req->handle->write_queue_size >= size);

  return size;
}
