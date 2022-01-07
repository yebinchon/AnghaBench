
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_shutdown_t ;
struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef int ssize_t ;


 int ASSERT (int) ;
 int after_shutdown ;
 int free (scalar_t__) ;
 scalar_t__ malloc (int) ;
 int uv_shutdown (int *,int *,int ) ;

__attribute__((used)) static void after_read(uv_stream_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf) {
  uv_shutdown_t* req;
  int r;

  if (buf->base) {
    free(buf->base);
  }

  req = (uv_shutdown_t*) malloc(sizeof *req);
  r = uv_shutdown(req, handle, after_shutdown);
  ASSERT(r == 0);
}
