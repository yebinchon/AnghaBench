
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int loop; } ;
typedef TYPE_1__ uv_stream_t ;


 int ASSERT (int) ;
 int connection_cb_called ;
 int incoming ;
 int timer ;
 int timer_cb ;
 scalar_t__ uv_accept (TYPE_1__*,TYPE_1__*) ;
 int uv_default_loop () ;
 scalar_t__ uv_tcp_init (int ,int *) ;
 scalar_t__ uv_timer_init (int ,int *) ;
 scalar_t__ uv_timer_start (int *,int ,int,int ) ;

__attribute__((used)) static void connection_cb(uv_stream_t* tcp, int status) {
  ASSERT(status == 0);

  ASSERT(0 == uv_tcp_init(tcp->loop, &incoming));
  ASSERT(0 == uv_accept(tcp, (uv_stream_t*) &incoming));

  ASSERT(0 == uv_timer_init(uv_default_loop(), &timer));
  ASSERT(0 == uv_timer_start(&timer, timer_cb, 1000, 0));

  connection_cb_called++;
}
