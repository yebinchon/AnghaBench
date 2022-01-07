
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 int buf_free (int const*) ;
 int loop ;
 int nrecv ;
 scalar_t__ nrecv_total ;
 int read_sockets_close_cb ;
 scalar_t__ start_time ;
 int uv_close (int *,int ) ;
 scalar_t__ uv_now (int ) ;
 int uv_update_time (int ) ;

__attribute__((used)) static void read_cb(uv_stream_t* stream, ssize_t bytes, const uv_buf_t* buf) {
  if (nrecv_total == 0) {
    ASSERT(start_time == 0);
    uv_update_time(loop);
    start_time = uv_now(loop);
  }

  if (bytes < 0) {
    uv_close((uv_handle_t*)stream, read_sockets_close_cb);
    return;
  }

  buf_free(buf);

  nrecv += bytes;
  nrecv_total += bytes;
}
