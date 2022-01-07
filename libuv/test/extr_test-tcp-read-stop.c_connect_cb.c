
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_read_cb ;
typedef int uv_connect_t ;
typedef int uv_alloc_cb ;


 int ASSERT (int) ;
 scalar_t__ fail_cb ;
 int tcp_handle ;
 int timer_cb ;
 int timer_handle ;
 scalar_t__ uv_read_start (int *,int ,int ) ;
 scalar_t__ uv_timer_start (int *,int ,int,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  ASSERT(0 == status);
  ASSERT(0 == uv_timer_start(&timer_handle, timer_cb, 50, 0));
  ASSERT(0 == uv_read_start((uv_stream_t*) &tcp_handle,
                            (uv_alloc_cb) fail_cb,
                            (uv_read_cb) fail_cb));
}
