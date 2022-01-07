
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iwdp_iport_struct {int dummy; } ;
typedef TYPE_1__* iwdp_iport_t ;
struct TYPE_5__ {int ws_id_to_iws; struct TYPE_5__* device_name; struct TYPE_5__* device_id; } ;


 int free (TYPE_1__*) ;
 int ht_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void iwdp_iport_free(iwdp_iport_t iport) {
  if (iport) {
    free(iport->device_id);
    free(iport->device_name);
    ht_free(iport->ws_id_to_iws);
    memset(iport, 0, sizeof(struct iwdp_iport_struct));
    free(iport);
  }
}
