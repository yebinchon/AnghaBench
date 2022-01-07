
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_tcp_t ;
typedef int uv_stream_t ;
struct TYPE_3__ {char* base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int UV_EOF ;
 int free (char*) ;
 int got_eof ;
 int got_q ;
 int puts (char*) ;
 int tcp ;

__attribute__((used)) static void read_cb(uv_stream_t* t, ssize_t nread, const uv_buf_t* buf) {
  ASSERT((uv_tcp_t*)t == &tcp);

  if (nread == 0) {
    free(buf->base);
    return;
  }

  if (!got_q) {
    ASSERT(nread == 1);
    ASSERT(!got_eof);
    ASSERT(buf->base[0] == 'Q');
    free(buf->base);
    got_q = 1;
    puts("got Q");
  } else {
    ASSERT(nread == UV_EOF);
    if (buf->base) {
      free(buf->base);
    }
    got_eof = 1;
    puts("got EOF");
  }
}
