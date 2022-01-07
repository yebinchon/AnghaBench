
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_tcp_t ;
typedef int uv_stream_t ;
typedef int uv_handle_t ;


 int ASSERT (int) ;
 int close_cb ;
 int do_accept_called ;
 scalar_t__ malloc (int) ;
 int uv_accept (int *,int *) ;
 int uv_close (int *,int ) ;
 int uv_default_loop () ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void do_accept(uv_timer_t* timer_handle) {
  uv_tcp_t* server;
  uv_tcp_t* accepted_handle = (uv_tcp_t*)malloc(sizeof *accepted_handle);
  int r;

  ASSERT(timer_handle != ((void*)0));
  ASSERT(accepted_handle != ((void*)0));

  r = uv_tcp_init(uv_default_loop(), accepted_handle);
  ASSERT(r == 0);

  server = (uv_tcp_t*)timer_handle->data;
  r = uv_accept((uv_stream_t*)server, (uv_stream_t*)accepted_handle);
  ASSERT(r == 0);

  do_accept_called++;


  uv_close((uv_handle_t*)accepted_handle, close_cb);


  if (do_accept_called == 2) {
    uv_close((uv_handle_t*)server, close_cb);
  }


  uv_close((uv_handle_t*)timer_handle, close_cb);
}
