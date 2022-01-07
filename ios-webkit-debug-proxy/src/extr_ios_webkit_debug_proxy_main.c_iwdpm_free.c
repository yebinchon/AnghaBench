
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iwdpm_struct {int dummy; } ;
typedef TYPE_1__* iwdpm_t ;
struct TYPE_5__ {struct TYPE_5__* sim_wi_socket_addr; struct TYPE_5__* frontend; struct TYPE_5__* config; int sm; int iwdp; int pc; } ;


 int free (TYPE_1__*) ;
 int iwdp_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int pc_free (int ) ;
 int sm_free (int ) ;

void iwdpm_free(iwdpm_t self) {
  if (self) {
    pc_free(self->pc);
    iwdp_free(self->iwdp);
    sm_free(self->sm);
    free(self->config);
    free(self->frontend);
    free(self->sim_wi_socket_addr);
    memset(self, 0, sizeof(struct iwdpm_struct));
    free(self);
  }
}
