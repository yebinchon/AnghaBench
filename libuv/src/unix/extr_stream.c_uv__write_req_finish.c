
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ error; int queue; int * bufs; int * bufsml; TYPE_2__* handle; } ;
typedef TYPE_1__ uv_write_t ;
struct TYPE_5__ {int io_watcher; int loop; int write_completed_queue; } ;
typedef TYPE_2__ uv_stream_t ;


 int QUEUE_INSERT_TAIL (int *,int *) ;
 int QUEUE_REMOVE (int *) ;
 int uv__free (int *) ;
 int uv__io_feed (int ,int *) ;

__attribute__((used)) static void uv__write_req_finish(uv_write_t* req) {
  uv_stream_t* stream = req->handle;


  QUEUE_REMOVE(&req->queue);







  if (req->error == 0) {
    if (req->bufs != req->bufsml)
      uv__free(req->bufs);
    req->bufs = ((void*)0);
  }




  QUEUE_INSERT_TAIL(&stream->write_completed_queue, &req->queue);
  uv__io_feed(stream->loop, &stream->io_watcher);
}
