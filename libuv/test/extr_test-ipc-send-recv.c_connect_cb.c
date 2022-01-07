
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_connect_t ;
typedef int uv_buf_t ;
struct TYPE_5__ {int stream; } ;
struct TYPE_4__ {int stream; } ;
struct TYPE_6__ {int channel; TYPE_2__ send2; int write_req2; TYPE_1__ send; int write_req; int connect_req; } ;


 int ASSERT (int) ;
 int alloc_cb ;
 TYPE_3__ ctx ;
 int recv_cb ;
 int uv_buf_init (char*,int) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_write2 (int *,int *,int *,int,int *,int *) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  int r;
  uv_buf_t buf;

  ASSERT(req == &ctx.connect_req);
  ASSERT(status == 0);

  buf = uv_buf_init(".", 1);
  r = uv_write2(&ctx.write_req,
                (uv_stream_t*)&ctx.channel,
                &buf, 1,
                &ctx.send.stream,
                ((void*)0));
  ASSERT(r == 0);




  buf = uv_buf_init(".", 1);
  r = uv_write2(&ctx.write_req2,
                (uv_stream_t*)&ctx.channel,
                &buf, 1,
                &ctx.send2.stream,
                ((void*)0));
  ASSERT(r == 0);

  r = uv_read_start((uv_stream_t*)&ctx.channel, alloc_cb, recv_cb);
  ASSERT(r == 0);
}
