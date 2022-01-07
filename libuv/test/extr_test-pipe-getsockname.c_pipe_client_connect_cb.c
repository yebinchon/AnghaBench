
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int TEST_PIPENAME ;
 int connect_req ;
 scalar_t__ memcmp (char*,int ,size_t) ;
 int pipe_client ;
 int pipe_client_connect_cb_called ;
 int pipe_close_cb ;
 int pipe_server ;
 int uv_close (int *,int ) ;
 int uv_pipe_getpeername (int *,char*,size_t*) ;
 int uv_pipe_getsockname (int *,char*,size_t*) ;

__attribute__((used)) static void pipe_client_connect_cb(uv_connect_t* req, int status) {
  char buf[1024];
  size_t len;
  int r;

  ASSERT(req == &connect_req);
  ASSERT(status == 0);

  len = sizeof buf;
  r = uv_pipe_getpeername(&pipe_client, buf, &len);
  ASSERT(r == 0);

  ASSERT(buf[len - 1] != 0);
  ASSERT(memcmp(buf, TEST_PIPENAME, len) == 0);

  len = sizeof buf;
  r = uv_pipe_getsockname(&pipe_client, buf, &len);
  ASSERT(r == 0 && len == 0);

  pipe_client_connect_cb_called++;


  uv_close((uv_handle_t*) &pipe_client, pipe_close_cb);
  uv_close((uv_handle_t*) &pipe_server, pipe_close_cb);
}
