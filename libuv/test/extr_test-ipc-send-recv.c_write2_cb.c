
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_write_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {int handle; } ;
struct TYPE_4__ {int handle; } ;
struct TYPE_6__ {int listen; int channel; TYPE_2__ recv2; TYPE_1__ recv; } ;


 int ASSERT (int) ;
 TYPE_3__ ctx2 ;
 scalar_t__ is_child_process ;
 scalar_t__ is_in_process ;
 int uv_close (int *,int *) ;
 int write2_cb_called ;

__attribute__((used)) static void write2_cb(uv_write_t* req, int status) {
  ASSERT(status == 0);



  if (++write2_cb_called == 2 && (is_child_process || is_in_process)) {
    uv_close(&ctx2.recv.handle, ((void*)0));
    uv_close(&ctx2.recv2.handle, ((void*)0));
    uv_close((uv_handle_t*)&ctx2.channel, ((void*)0));
    uv_close((uv_handle_t*)&ctx2.listen, ((void*)0));
  }
}
