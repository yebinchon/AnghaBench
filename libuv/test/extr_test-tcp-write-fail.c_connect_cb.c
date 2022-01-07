
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_tcp_t ;
typedef int uv_stream_t ;
struct TYPE_4__ {int * handle; } ;
typedef TYPE_1__ uv_connect_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int close_socket (int *) ;
 int connect_cb_called ;
 TYPE_1__ connect_req ;
 int uv_buf_init (char*,int) ;
 int uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  uv_buf_t buf;
  uv_stream_t* stream;
  int r;

  ASSERT(req == &connect_req);
  ASSERT(status == 0);

  stream = req->handle;
  connect_cb_called++;


  close_socket((uv_tcp_t*)stream);

  buf = uv_buf_init("hello\n", 6);
  r = uv_write(&write_req, stream, &buf, 1, write_cb);
  ASSERT(r == 0);
}
