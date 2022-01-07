
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {scalar_t__ len; int * base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 scalar_t__ UV_ENOBUFS ;
 int client ;
 int close_cb ;
 int incoming ;
 int server ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void conn_read_cb(uv_stream_t* stream,
                         ssize_t nread,
                         const uv_buf_t* buf) {
  ASSERT(nread == UV_ENOBUFS);
  ASSERT(buf->base == ((void*)0));
  ASSERT(buf->len == 0);

  uv_close((uv_handle_t*) &incoming, close_cb);
  uv_close((uv_handle_t*) &client, close_cb);
  uv_close((uv_handle_t*) &server, close_cb);
}
