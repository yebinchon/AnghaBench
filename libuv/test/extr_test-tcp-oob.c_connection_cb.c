
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_os_fd_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 scalar_t__ EINTR ;
 int MSG_OOB ;
 int alloc_cb ;
 int client_handle ;
 scalar_t__ errno ;
 int peer_handle ;
 int read_cb ;
 int send (int ,char*,int,int ) ;
 scalar_t__ uv_accept (int *,int *) ;
 scalar_t__ uv_fileno (int *,int *) ;
 scalar_t__ uv_read_start (int *,int ,int ) ;
 scalar_t__ uv_stream_set_blocking (int *,int) ;

__attribute__((used)) static void connection_cb(uv_stream_t* handle, int status) {
  int r;
  uv_os_fd_t fd;

  ASSERT(0 == status);
  ASSERT(0 == uv_accept(handle, (uv_stream_t*) &peer_handle));
  ASSERT(0 == uv_read_start((uv_stream_t*) &peer_handle, alloc_cb, read_cb));


  ASSERT(0 == uv_fileno((uv_handle_t*) &client_handle, &fd));

  ASSERT(0 == uv_stream_set_blocking((uv_stream_t*) &client_handle, 1));




  do {
    r = send(fd, "hello", 5, MSG_OOB);
  } while (r < 0 && errno == EINTR);
  ASSERT(5 == r);

  do {
    r = send(fd, "hello", 5, MSG_OOB);
  } while (r < 0 && errno == EINTR);
  ASSERT(5 == r);

  ASSERT(0 == uv_stream_set_blocking((uv_stream_t*) &client_handle, 0));
}
