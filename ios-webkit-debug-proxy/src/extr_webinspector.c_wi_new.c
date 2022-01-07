
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* wi_t ;
struct wi_struct {int dummy; } ;
struct TYPE_7__ {int partials_supported; } ;
struct TYPE_6__ {TYPE_2__* private_state; int on_error; int recv_packet; int send_plist; int on_recv; } ;


 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int wi_free (TYPE_1__*) ;
 int wi_on_error ;
 int wi_on_recv ;
 TYPE_2__* wi_private_new () ;
 int wi_recv_packet ;
 int wi_send_plist ;

wi_t wi_new(bool partials_supported) {
  wi_t self = (wi_t)malloc(sizeof(struct wi_struct));
  if (!self) {
    return ((void*)0);
  }
  memset(self, 0, sizeof(struct wi_struct));
  self->on_recv = wi_on_recv;
  self->send_plist = wi_send_plist;
  self->recv_packet = wi_recv_packet;
  self->on_error = wi_on_error;
  self->private_state = wi_private_new();
  if (!self->private_state) {
    wi_free(self);
    return ((void*)0);
  }
  self->private_state->partials_supported = partials_supported;
  return self;
}
