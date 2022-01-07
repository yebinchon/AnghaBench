
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef scalar_t__ ws_private_t ;
struct ws_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ private_state; int on_error; int on_recv; int send_close; int send_frame; int send_upgrade; int send_connect; } ;


 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ws_on_error ;
 int ws_on_recv ;
 int ws_private_free (scalar_t__) ;
 scalar_t__ ws_private_new () ;
 int ws_send_close ;
 int ws_send_connect ;
 int ws_send_frame ;
 int ws_send_upgrade ;

ws_t ws_new() {
  ws_private_t my = ws_private_new();
  if (!my) {
    return ((void*)0);
  }
  ws_t self = (ws_t)malloc(sizeof(struct ws_struct));
  if (!self) {
    ws_private_free(my);
    return ((void*)0);
  }
  memset(self, 0, sizeof(struct ws_struct));
  self->send_connect = ws_send_connect;
  self->send_upgrade = ws_send_upgrade;
  self->send_frame = ws_send_frame;
  self->send_close = ws_send_close;
  self->on_recv = ws_on_recv;
  self->on_error = ws_on_error;
  self->private_state = my;
  return self;
}
