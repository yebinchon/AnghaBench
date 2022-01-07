
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct iwdp_idl_struct {int dummy; } ;
typedef TYPE_1__* iwdp_idl_t ;
struct TYPE_5__ {int dl; } ;


 int dl_free (int ) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void iwdp_idl_free(iwdp_idl_t idl) {
  if (idl) {
    dl_free(idl->dl);
    memset(idl, 0, sizeof(struct iwdp_idl_struct));
    free(idl);
  }
}
