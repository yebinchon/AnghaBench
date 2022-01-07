
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
typedef TYPE_2__* ws_private_t ;
typedef int ssize_t ;
struct TYPE_9__ {int in; } ;
struct TYPE_8__ {int (* on_error ) (TYPE_1__*,char*) ;TYPE_2__* private_state; } ;


 int WS_ERROR ;
 int WS_SUCCESS ;
 scalar_t__ cb_begin_input (int ,char const*,int ) ;
 scalar_t__ cb_end_input (int ) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;
 int ws_on_debug (TYPE_1__*,char*,char const*,int ) ;
 int ws_recv_loop (TYPE_1__*) ;

ws_status ws_on_recv(ws_t self, const char *buf, ssize_t length) {
  ws_private_t my = self->private_state;
  if (length < 0) {
    return WS_ERROR;
  } else if (length == 0) {
    return WS_SUCCESS;
  }
  ws_on_debug(self, "ws.recv", buf, length);
  if (cb_begin_input(my->in, buf, length)) {
    return self->on_error(self, "begin_input buffer error");
  }
  ws_status ret = ws_recv_loop(self);
  if (cb_end_input(my->in)) {
    return self->on_error(self, "end_input buffer error");
  }
  return ret;
}
