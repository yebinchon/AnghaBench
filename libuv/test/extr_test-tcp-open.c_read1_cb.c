
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {char* base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int UV_EOF ;
 int close_cb ;
 int printf (char*) ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void read1_cb(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf) {
  int i;
  ASSERT(tcp != ((void*)0));

  if (nread >= 0) {
    for (i = 0; i < nread; ++i)
      ASSERT(buf->base[i] == 'P');
  } else {
    ASSERT(nread == UV_EOF);
    printf("GOT EOF\n");
    uv_close((uv_handle_t*)tcp, close_cb);
  }
}
