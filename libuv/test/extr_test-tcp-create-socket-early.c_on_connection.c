
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_5__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;
typedef int uv_handle_t ;
typedef int * uv_close_cb ;


 int AF_INET ;
 int ASSERT (int) ;
 int UV_EBUSY ;
 scalar_t__ free ;
 int * malloc (int) ;
 int uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_close (int *,int *) ;
 int uv_tcp_init_ex (int ,int *,int ) ;

__attribute__((used)) static void on_connection(uv_stream_t* server, int status) {
  uv_tcp_t* handle;
  int r;

  ASSERT(status == 0);

  handle = malloc(sizeof(*handle));
  ASSERT(handle != ((void*)0));

  r = uv_tcp_init_ex(server->loop, handle, AF_INET);
  ASSERT(r == 0);

  r = uv_accept(server, (uv_stream_t*)handle);
  ASSERT(r == UV_EBUSY);

  uv_close((uv_handle_t*) server, ((void*)0));
  uv_close((uv_handle_t*) handle, (uv_close_cb)free);
}
