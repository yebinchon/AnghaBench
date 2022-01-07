
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; int req; } ;
typedef TYPE_1__ write_req_t ;
typedef int uv_stream_t ;
typedef int uv_shutdown_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {char* base; } ;
typedef TYPE_2__ uv_buf_t ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int FATAL (char*) ;
 int UV_EOF ;
 int after_shutdown ;
 int after_write ;
 int free (char*) ;
 int * malloc (int) ;
 int on_close ;
 int on_server_close ;
 int * server ;
 int server_closed ;
 int uv_buf_init (char*,int) ;
 int uv_close (int *,int ) ;
 scalar_t__ uv_shutdown (int *,int *,int ) ;
 scalar_t__ uv_write (int *,int *,int *,int,int ) ;

__attribute__((used)) static void after_read(uv_stream_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf) {
  int i;
  write_req_t *wr;
  uv_shutdown_t* sreq;

  if (nread < 0) {

    ASSERT(nread == UV_EOF);

    free(buf->base);
    sreq = malloc(sizeof* sreq);
    ASSERT(0 == uv_shutdown(sreq, handle, after_shutdown));
    return;
  }

  if (nread == 0) {

    free(buf->base);
    return;
  }





  if (!server_closed) {
    for (i = 0; i < nread; i++) {
      if (buf->base[i] == 'Q') {
        if (i + 1 < nread && buf->base[i + 1] == 'S') {
          free(buf->base);
          uv_close((uv_handle_t*)handle, on_close);
          return;
        } else {
          uv_close(server, on_server_close);
          server_closed = 1;
        }
      }
    }
  }

  wr = (write_req_t*) malloc(sizeof *wr);
  ASSERT(wr != ((void*)0));
  wr->buf = uv_buf_init(buf->base, nread);

  if (uv_write(&wr->req, handle, &wr->buf, 1, after_write)) {
    FATAL("uv_write failed");
  }
}
