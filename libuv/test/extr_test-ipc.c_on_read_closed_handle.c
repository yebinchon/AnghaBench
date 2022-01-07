
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ UV_EOF ;
 int abort () ;
 int closed_handle_data_read ;
 int free (int ) ;
 int printf (char*,char*) ;
 char* uv_strerror (scalar_t__) ;

__attribute__((used)) static void on_read_closed_handle(uv_stream_t* handle,
                                  ssize_t nread,
                                  const uv_buf_t* buf) {
  if (nread == 0 || nread == UV_EOF) {
    free(buf->base);
    return;
  }

  if (nread < 0) {
    printf("error recving on channel: %s\n", uv_strerror(nread));
    abort();
  }

  closed_handle_data_read += nread;
  free(buf->base);
}
