
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_stream_t ;
typedef int uv_buf_t ;


 int ASSERT (int) ;
 int tcp_handle ;
 int uv_buf_init (char*,int) ;
 scalar_t__ uv_read_stop (int *) ;
 scalar_t__ uv_write (int *,int *,int *,int,int ) ;
 int write_cb ;
 int write_req ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  uv_buf_t buf = uv_buf_init("PING", 4);
  ASSERT(0 == uv_write(&write_req,
                       (uv_stream_t*) &tcp_handle,
                       &buf,
                       1,
                       write_cb));
  ASSERT(0 == uv_read_stop((uv_stream_t*) &tcp_handle));
}
