
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* iwdpm_t ;
typedef TYPE_2__* iwdp_t ;
typedef int iwdp_status ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int * pc; int config; } ;


 int IWDP_ERROR ;
 int IWDP_SUCCESS ;
 int pc_add_file (int *,int ) ;
 scalar_t__ pc_add_line (int *,int ,int ) ;
 int pc_clear (int *) ;
 int pc_free (int *) ;
 int * pc_new () ;
 int pc_select_port (int *,char const*,int*,int*,int*) ;
 int strlen (int ) ;

iwdp_status iwdpm_select_port(iwdp_t iwdp, const char *device_id,
    int *to_port, int *to_min_port, int *to_max_port) {
  iwdpm_t self = (iwdpm_t)iwdp->state;
  int ret = 0;

  int is_file = 0;
  if (!self->pc) {
    self->pc = pc_new();
    if (pc_add_line(self->pc, self->config, strlen(self->config))) {
      pc_clear(self->pc);
      pc_add_file(self->pc, self->config);
      is_file = 1;
    }
  }
  ret = pc_select_port(self->pc, device_id, to_port, to_min_port,to_max_port);
  if (is_file) {
    pc_free(self->pc);
    self->pc = ((void*)0);
  }
  return (ret ? IWDP_ERROR : IWDP_SUCCESS);
}
