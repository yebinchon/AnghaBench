
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_connect_t ;
typedef int uv_buf_t ;


 int ARRAY_SIZE (int *) ;
 int ASSERT (int) ;
 int close_cb ;
 int * connect_reqs ;
 size_t pending_incoming ;
 int tcp_check ;
 int tcp_check_req ;
 int * tcp_incoming ;
 int * tcp_outgoing ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int ) ;
 scalar_t__ uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int * write_reqs ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  unsigned int i;
  uv_buf_t buf;
  uv_stream_t* outgoing;

  if (req == &tcp_check_req) {
    ASSERT(status != 0);





    uv_close((uv_handle_t*) &tcp_incoming[pending_incoming], close_cb);
    uv_close((uv_handle_t*) &tcp_check, close_cb);
    return;
  }

  ASSERT(status == 0);
  ASSERT(connect_reqs <= req);
  ASSERT(req <= connect_reqs + ARRAY_SIZE(connect_reqs));
  i = req - connect_reqs;

  buf = uv_buf_init("x", 1);
  outgoing = (uv_stream_t*) &tcp_outgoing[i];
  ASSERT(0 == uv_write(&write_reqs[i], outgoing, &buf, 1, write_cb));
}
