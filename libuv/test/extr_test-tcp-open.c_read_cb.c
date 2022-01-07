
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int UV_EOF ;
 int close_cb ;
 scalar_t__ memcmp (char*,int ,int) ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void read_cb(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf) {
  ASSERT(tcp != ((void*)0));

  if (nread >= 0) {
    ASSERT(nread == 4);
    ASSERT(memcmp("PING", buf->base, nread) == 0);
  }
  else {
    ASSERT(nread == UV_EOF);
    uv_close((uv_handle_t*)tcp, close_cb);
  }
}
