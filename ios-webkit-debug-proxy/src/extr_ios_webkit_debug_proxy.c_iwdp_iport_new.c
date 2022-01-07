
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iwdp_iport_struct {int dummy; } ;
typedef TYPE_2__* iwdp_iport_t ;
struct TYPE_6__ {int type; } ;
struct TYPE_7__ {int ws_id_to_iws; TYPE_1__ type; } ;


 int HT_STRING_KEYS ;
 int TYPE_IPORT ;
 int ht_new (int ) ;
 int iwdp_iport_free (TYPE_2__*) ;
 int malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

iwdp_iport_t iwdp_iport_new() {
  iwdp_iport_t iport = (iwdp_iport_t)malloc(sizeof(struct iwdp_iport_struct));
  if (!iport) {
    return ((void*)0);
  }
  memset(iport, 0, sizeof(struct iwdp_iport_struct));
  iport->type.type = TYPE_IPORT;
  iport->ws_id_to_iws = ht_new(HT_STRING_KEYS);
  if (!iport->ws_id_to_iws) {
    iwdp_iport_free(iport);
    return ((void*)0);
  }
  return iport;
}
