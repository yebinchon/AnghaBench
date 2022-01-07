
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct iwdp_struct {int dummy; } ;
struct iwdp_private {int dummy; } ;
typedef TYPE_1__* iwdp_t ;
typedef TYPE_1__* iwdp_private_t ;
struct TYPE_6__ {int device_id_to_iport; int * sim_wi_socket_addr; int * frontend; struct TYPE_6__* private_state; int on_error; int on_close; int on_recv; int on_accept; int start; } ;


 int HT_STRING_KEYS ;
 int ht_new (int ) ;
 int iwdp_free (TYPE_1__*) ;
 int iwdp_on_accept ;
 int iwdp_on_close ;
 int iwdp_on_error ;
 int iwdp_on_recv ;
 int iwdp_start ;
 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int * strdup (char const*) ;

iwdp_t iwdp_new(const char *frontend, const char *sim_wi_socket_addr) {
  iwdp_t self = (iwdp_t)malloc(sizeof(struct iwdp_struct));
  iwdp_private_t my = (iwdp_private_t)malloc(sizeof(struct iwdp_private));
  if (!self || !my) {
    iwdp_free(self);
    return ((void*)0);
  }
  memset(self, 0, sizeof(struct iwdp_struct));
  memset(my, 0, sizeof(struct iwdp_private));
  self->start = iwdp_start;
  self->on_accept = iwdp_on_accept;
  self->on_recv = iwdp_on_recv;
  self->on_close = iwdp_on_close;
  self->on_error = iwdp_on_error;
  self->private_state = my;
  my->frontend = (frontend ? strdup(frontend) : ((void*)0));
  my->sim_wi_socket_addr = strdup(sim_wi_socket_addr);
  my->device_id_to_iport = ht_new(HT_STRING_KEYS);
  if (!my->device_id_to_iport) {
    iwdp_free(self);
    return ((void*)0);
  }
  return self;
}
