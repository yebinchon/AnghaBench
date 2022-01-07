
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ uv_timer_t ;
typedef int uv_stream_t ;


 int ASSERT (int) ;
 int connection_cb_called ;
 int do_accept ;
 scalar_t__ malloc (int) ;
 int uv_default_loop () ;
 int uv_timer_init (int ,TYPE_1__*) ;
 int uv_timer_start (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void connection_cb(uv_stream_t* tcp, int status) {
  int r;
  uv_timer_t* timer_handle;

  ASSERT(status == 0);

  timer_handle = (uv_timer_t*)malloc(sizeof *timer_handle);
  ASSERT(timer_handle != ((void*)0));


  r = uv_timer_init(uv_default_loop(), timer_handle);
  ASSERT(r == 0);

  timer_handle->data = tcp;

  r = uv_timer_start(timer_handle, do_accept, 1000, 0);
  ASSERT(r == 0);

  connection_cb_called++;
}
