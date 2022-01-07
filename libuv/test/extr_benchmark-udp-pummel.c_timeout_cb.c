
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_timer_t ;
typedef int uv_handle_t ;
struct TYPE_4__ {int udp_handle; } ;
struct TYPE_3__ {int udp_handle; } ;


 int close_cb ;
 int exiting ;
 int n_receivers_ ;
 int n_senders_ ;
 TYPE_2__* receivers ;
 TYPE_1__* senders ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void timeout_cb(uv_timer_t* timer) {
  int i;

  exiting = 1;

  for (i = 0; i < n_senders_; i++)
    uv_close((uv_handle_t*)&senders[i].udp_handle, close_cb);

  for (i = 0; i < n_receivers_; i++)
    uv_close((uv_handle_t*)&receivers[i].udp_handle, close_cb);
}
