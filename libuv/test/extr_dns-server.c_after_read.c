
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_shutdown_t ;
struct TYPE_4__ {scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_EOF ;
 int after_shutdown ;
 int free (scalar_t__) ;
 int * malloc (int) ;
 int process_req (int *,scalar_t__,TYPE_1__ const*) ;
 int uv_shutdown (int *,int *,int ) ;

__attribute__((used)) static void after_read(uv_stream_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf) {
  uv_shutdown_t* req;

  if (nread < 0) {

    ASSERT(nread == UV_EOF);

    if (buf->base) {
      free(buf->base);
    }

    req = malloc(sizeof *req);
    uv_shutdown(req, handle, after_shutdown);

    return;
  }

  if (nread == 0) {

    free(buf->base);
    return;
  }

  process_req(handle, nread, buf);
}
