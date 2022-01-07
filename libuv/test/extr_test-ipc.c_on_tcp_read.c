
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef scalar_t__ ssize_t ;


 int ASSERT (int) ;
 int channel ;
 int free (int ) ;
 scalar_t__ memcmp (char*,int ,scalar_t__) ;
 int tcp_connection ;
 int tcp_read_cb_called ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void on_tcp_read(uv_stream_t* tcp, ssize_t nread, const uv_buf_t* buf) {
  ASSERT(nread > 0);
  ASSERT(memcmp("hello again\n", buf->base, nread) == 0);
  ASSERT(tcp == (uv_stream_t*)&tcp_connection);
  free(buf->base);

  tcp_read_cb_called++;

  uv_close((uv_handle_t*)tcp, ((void*)0));
  uv_close((uv_handle_t*)&channel, ((void*)0));
}
