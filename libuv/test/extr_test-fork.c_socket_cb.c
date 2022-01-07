
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_poll_t ;
typedef int uv_handle_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 int UV_READABLE ;
 int printf (char*,int) ;
 scalar_t__ read (scalar_t__,int ,scalar_t__) ;
 int socket_cb_called ;
 int socket_cb_read_buf ;
 scalar_t__ socket_cb_read_fd ;
 scalar_t__ socket_cb_read_size ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void socket_cb(uv_poll_t* poll, int status, int events) {
  ssize_t cnt;
  socket_cb_called++;
  ASSERT(0 == status);
  printf("Socket cb got events %d\n", events);
  ASSERT(UV_READABLE == (events & UV_READABLE));
  if (socket_cb_read_fd) {
    cnt = read(socket_cb_read_fd, socket_cb_read_buf, socket_cb_read_size);
    ASSERT(cnt == socket_cb_read_size);
  }
  uv_close((uv_handle_t*) poll, ((void*)0));
}
