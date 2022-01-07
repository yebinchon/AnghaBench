
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef TYPE_1__* dl_t ;
typedef int dl_status ;
typedef TYPE_2__* dl_private_t ;
struct TYPE_6__ {int in; } ;
struct TYPE_5__ {TYPE_2__* private_state; } ;


 int DL_ERROR ;
 int DL_SUCCESS ;
 scalar_t__ cb_begin_input (int ,char const*,int ) ;
 scalar_t__ cb_end_input (int ) ;
 int dl_recv_loop (TYPE_1__*) ;

dl_status dl_on_recv(dl_t self, const char *buf, ssize_t length) {
  dl_private_t my = self->private_state;
  if (length < 0) {
    return DL_ERROR;
  } else if (length == 0) {
    return DL_SUCCESS;
  }
  if (cb_begin_input(my->in, buf, length)) {
    return DL_ERROR;
  }
  dl_status ret = dl_recv_loop(self);
  if (cb_end_input(my->in)) {
    return DL_ERROR;
  }
  return ret;
}
