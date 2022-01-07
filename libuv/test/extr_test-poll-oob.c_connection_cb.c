
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ EINTR ;
 int MSG_OOB ;
 int UV_PRIORITIZED ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 int client_fd ;
 scalar_t__ errno ;
 int idle ;
 int idle_cb ;
 int peer_handle ;
 int poll_cb ;
 int * poll_req ;
 int send (int ,char*,int,int ) ;
 int server_fd ;
 scalar_t__ uv_accept (int *,int *) ;
 int uv_default_loop () ;
 scalar_t__ uv_fileno (int *,int *) ;
 scalar_t__ uv_idle_start (int *,int ) ;
 scalar_t__ uv_poll_init_socket (int ,int *,int ) ;
 scalar_t__ uv_poll_start (int *,int,int ) ;

__attribute__((used)) static void connection_cb(uv_stream_t* handle, int status) {
  int r;

  ASSERT(0 == status);
  ASSERT(0 == uv_accept(handle, (uv_stream_t*) &peer_handle));
  ASSERT(0 == uv_fileno((uv_handle_t*) &peer_handle, &server_fd));
  ASSERT(0 == uv_poll_init_socket(uv_default_loop(), &poll_req[0], client_fd));
  ASSERT(0 == uv_poll_init_socket(uv_default_loop(), &poll_req[1], server_fd));
  ASSERT(0 == uv_poll_start(&poll_req[0],
                            UV_PRIORITIZED | UV_READABLE | UV_WRITABLE,
                            poll_cb));
  ASSERT(0 == uv_poll_start(&poll_req[1],
                            UV_READABLE,
                            poll_cb));
  do {
    r = send(server_fd, "hello", 5, MSG_OOB);
  } while (r < 0 && errno == EINTR);
  ASSERT(5 == r);

  do {
    r = send(server_fd, "world", 5, 0);
  } while (r < 0 && errno == EINTR);
  ASSERT(5 == r);

  ASSERT(0 == uv_idle_start(&idle, idle_cb));
}
