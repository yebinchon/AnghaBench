
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iwdp_idl_struct {int dummy; } ;
typedef TYPE_2__* iwdp_idl_t ;
typedef TYPE_3__* dl_t ;
struct TYPE_10__ {TYPE_2__* state; int on_detach; int on_attach; int send_packet; } ;
struct TYPE_8__ {int type; } ;
struct TYPE_9__ {TYPE_3__* dl; TYPE_1__ type; } ;


 int TYPE_IDL ;
 TYPE_3__* dl_new () ;
 int free (TYPE_2__*) ;
 int iwdp_on_attach ;
 int iwdp_on_detach ;
 int iwdp_send_to_dl ;
 int malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

iwdp_idl_t iwdp_idl_new() {
  iwdp_idl_t idl = (iwdp_idl_t)malloc(sizeof(struct iwdp_idl_struct));
  dl_t dl = dl_new();
  if (!idl || !dl) {
    free(idl);
    return ((void*)0);
  }
  memset(idl, 0, sizeof(struct iwdp_idl_struct));
  idl->type.type = TYPE_IDL;
  idl->dl = dl;
  dl->send_packet = iwdp_send_to_dl;
  dl->on_attach = iwdp_on_attach;
  dl->on_detach = iwdp_on_detach;
  dl->state = idl;
  return idl;
}
