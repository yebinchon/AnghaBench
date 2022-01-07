
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 int free (int ) ;

__attribute__((used)) static void on_read_send_zero(uv_stream_t* handle,
                              ssize_t nread,
                              const uv_buf_t* buf) {
  ASSERT(nread == 0 || nread == UV_EOF);
  free(buf->base);
}
