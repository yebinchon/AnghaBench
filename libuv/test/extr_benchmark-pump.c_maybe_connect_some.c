
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_tcp_t ;
typedef int uv_pipe_t ;
typedef int uv_connect_t ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ MAX_SIMULTANEOUS_CONNECTS ;
 scalar_t__ TARGET_CONNECTIONS ;
 scalar_t__ TCP ;
 int TEST_PIPENAME ;
 int connect_addr ;
 int connect_cb ;
 int loop ;
 scalar_t__ max_connect_socket ;
 int * pipe_write_handles ;
 scalar_t__ req_alloc () ;
 int * tcp_write_handles ;
 scalar_t__ type ;
 int uv_pipe_connect (int *,int *,int ,int ) ;
 int uv_pipe_init (int ,int *,int ) ;
 int uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;
 scalar_t__ write_sockets ;

__attribute__((used)) static void maybe_connect_some(void) {
  uv_connect_t* req;
  uv_tcp_t* tcp;
  uv_pipe_t* pipe;
  int r;

  while (max_connect_socket < TARGET_CONNECTIONS &&
         max_connect_socket < write_sockets + MAX_SIMULTANEOUS_CONNECTS) {
    if (type == TCP) {
      tcp = &tcp_write_handles[max_connect_socket++];

      r = uv_tcp_init(loop, tcp);
      ASSERT(r == 0);

      req = (uv_connect_t*) req_alloc();
      r = uv_tcp_connect(req,
                         tcp,
                         (const struct sockaddr*) &connect_addr,
                         connect_cb);
      ASSERT(r == 0);
    } else {
      pipe = &pipe_write_handles[max_connect_socket++];

      r = uv_pipe_init(loop, pipe, 0);
      ASSERT(r == 0);

      req = (uv_connect_t*) req_alloc();
      uv_pipe_connect(req, pipe, TEST_PIPENAME, connect_cb);
    }
  }
}
