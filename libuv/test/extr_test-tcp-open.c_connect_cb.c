
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_4__ {int * handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int alloc_cb ;
 int connect_cb_called ;
 TYPE_1__ connect_req ;
 int read_cb ;
 int shutdown_cb ;
 int shutdown_req ;
 int uv_buf_init (char*,int) ;
 int uv_read_start (int *,int ,int ) ;
 int uv_shutdown (int *,int *,int ) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  uv_buf_t buf = uv_buf_init("PING", 4);
  uv_stream_t* stream;
  int r;

  ASSERT(req == &connect_req);
  ASSERT(status == 0);

  stream = req->handle;
  connect_cb_called++;

  r = uv_write(&write_req, stream, &buf, 1, write_cb);
  ASSERT(r == 0);


  r = uv_shutdown(&shutdown_req, stream, shutdown_cb);
  ASSERT(r == 0);


  r = uv_read_start(stream, alloc_cb, read_cb);
  ASSERT(r == 0);
}
