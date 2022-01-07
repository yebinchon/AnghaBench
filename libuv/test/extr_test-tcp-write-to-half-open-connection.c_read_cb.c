
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_handle_t ;
typedef int uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_ECONNRESET ;
 scalar_t__ UV_EOF ;
 int fprintf (int ,char*,char*) ;
 int read_cb_called ;
 int stderr ;
 int tcp_peer ;
 int tcp_server ;
 int uv_close (int *,int *) ;
 char* uv_err_name (scalar_t__) ;

__attribute__((used)) static void read_cb(uv_stream_t* stream, ssize_t nread, const uv_buf_t* buf) {
  if (nread < 0) {
    fprintf(stderr, "read_cb error: %s\n", uv_err_name(nread));
    ASSERT(nread == UV_ECONNRESET || nread == UV_EOF);

    uv_close((uv_handle_t*)&tcp_server, ((void*)0));
    uv_close((uv_handle_t*)&tcp_peer, ((void*)0));
  }

  read_cb_called++;
}
