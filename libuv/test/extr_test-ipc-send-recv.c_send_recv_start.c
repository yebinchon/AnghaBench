
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_stream_t ;
typedef int uv_handle_t ;
struct TYPE_2__ {int channel; } ;


 int ASSERT (int) ;
 int alloc_cb ;
 TYPE_1__ ctx2 ;
 int read_cb ;
 scalar_t__ uv_is_closing (int *) ;
 int uv_is_readable (int *) ;
 int uv_is_writable (int *) ;
 int uv_read_start (int *,int ,int ) ;

__attribute__((used)) static void send_recv_start(void) {
  int r;
  ASSERT(1 == uv_is_readable((uv_stream_t*)&ctx2.channel));
  ASSERT(1 == uv_is_writable((uv_stream_t*)&ctx2.channel));
  ASSERT(0 == uv_is_closing((uv_handle_t*)&ctx2.channel));

  r = uv_read_start((uv_stream_t*)&ctx2.channel, alloc_cb, read_cb);
  ASSERT(r == 0);
}
