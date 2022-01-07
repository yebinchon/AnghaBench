
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_2__ {int channel; int listen; } ;


 int ASSERT (int) ;
 TYPE_1__ ctx2 ;
 int send_recv_start () ;
 int uv_accept (int *,int *) ;

__attribute__((used)) static void listen_cb(uv_stream_t* handle, int status) {
  int r;
  ASSERT(handle == (uv_stream_t*)&ctx2.listen);
  ASSERT(status == 0);

  r = uv_accept((uv_stream_t*)&ctx2.listen, (uv_stream_t*)&ctx2.channel);
  ASSERT(r == 0);

  send_recv_start();
}
