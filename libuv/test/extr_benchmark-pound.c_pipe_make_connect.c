
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uv_pipe_t ;
struct TYPE_10__ {int conn_req; } ;
typedef TYPE_4__ pipe_conn_rec ;
struct TYPE_9__ {TYPE_5__* data; } ;
struct TYPE_8__ {TYPE_5__* data; } ;
struct TYPE_7__ {TYPE_5__* data; } ;
struct TYPE_11__ {int i; TYPE_3__ stream; TYPE_2__ write_req; TYPE_1__ conn_req; } ;
typedef TYPE_5__ conn_rec ;


 int ASSERT (int) ;
 int TEST_PIPENAME ;
 int connect_cb ;
 int loop ;
 int printf (char*,int) ;
 int uv_pipe_connect (int *,int *,int ,int ) ;
 int uv_pipe_init (int ,int *,int ) ;

__attribute__((used)) static void pipe_make_connect(conn_rec* p) {
  int r;

  r = uv_pipe_init(loop, (uv_pipe_t*)&p->stream, 0);
  ASSERT(r == 0);

  uv_pipe_connect(&((pipe_conn_rec*) p)->conn_req,
                  (uv_pipe_t*) &p->stream,
                  TEST_PIPENAME,
                  connect_cb);





  p->conn_req.data = p;
  p->write_req.data = p;
  p->stream.data = p;
}
