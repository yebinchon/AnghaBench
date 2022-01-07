
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* sm_t ;
typedef TYPE_2__* iwdpm_t ;
typedef TYPE_3__* iwdp_t ;
struct TYPE_10__ {int * is_debug; TYPE_2__* state; int remove_fd; int add_fd; int send; int connect; int listen; int select_port; int attach; int subscribe; } ;
struct TYPE_9__ {int is_debug; TYPE_3__* iwdp; TYPE_1__* sm; int sim_wi_socket_addr; int frontend; } ;
struct TYPE_8__ {int * is_debug; TYPE_2__* state; int on_close; int on_recv; int on_sent; int on_accept; } ;


 TYPE_3__* iwdp_new (int ,int ) ;
 int iwdpm_add_fd ;
 int iwdpm_attach ;
 int iwdpm_connect ;
 int iwdpm_listen ;
 int iwdpm_on_accept ;
 int iwdpm_on_close ;
 int iwdpm_on_recv ;
 int iwdpm_on_sent ;
 int iwdpm_remove_fd ;
 int iwdpm_select_port ;
 int iwdpm_send ;
 int iwdpm_subscribe ;
 int sm_free (TYPE_1__*) ;
 TYPE_1__* sm_new (int) ;

void iwdpm_create_bridge(iwdpm_t self) {
  sm_t sm = sm_new(4096);
  iwdp_t iwdp = iwdp_new(self->frontend, self->sim_wi_socket_addr);
  if (!sm || !iwdp) {
    sm_free(sm);
    return;
  }
  self->sm = sm;
  self->iwdp = iwdp;
  iwdp->subscribe = iwdpm_subscribe;
  iwdp->attach = iwdpm_attach;
  iwdp->select_port = iwdpm_select_port;
  iwdp->listen = iwdpm_listen;
  iwdp->connect = iwdpm_connect;
  iwdp->send = iwdpm_send;
  iwdp->add_fd = iwdpm_add_fd;
  iwdp->remove_fd = iwdpm_remove_fd;
  iwdp->state = self;
  iwdp->is_debug = &self->is_debug;
  sm->on_accept = iwdpm_on_accept;
  sm->on_sent = iwdpm_on_sent;
  sm->on_recv = iwdpm_on_recv;
  sm->on_close = iwdpm_on_close;
  sm->state = self;
  sm->is_debug = &self->is_debug;
}
