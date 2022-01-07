
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 int close_cb ;
 int free (scalar_t__) ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void read_cb(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf) {


  if (buf->base) {
    free(buf->base);
  }

  if (nread >= 0) {
    ASSERT(nread == 0);
  } else {
    ASSERT(tcp != ((void*)0));
    ASSERT(nread == UV_EOF);
    uv_close((uv_handle_t*)tcp, close_cb);
  }
}
