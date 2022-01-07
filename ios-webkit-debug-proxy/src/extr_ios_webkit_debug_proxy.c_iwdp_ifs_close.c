
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* iwdp_t ;
typedef int iwdp_status ;
typedef TYPE_2__* iwdp_iws_t ;
typedef TYPE_3__* iwdp_ifs_t ;
struct TYPE_10__ {TYPE_2__* iws; } ;
struct TYPE_9__ {scalar_t__ ws_fd; TYPE_3__* ifs; } ;
struct TYPE_8__ {int (* remove_fd ) (TYPE_1__*,scalar_t__) ;} ;


 int IWDP_SUCCESS ;
 int iwdp_ifs_free (TYPE_3__*) ;
 int stub1 (TYPE_1__*,scalar_t__) ;

iwdp_status iwdp_ifs_close(iwdp_t self, iwdp_ifs_t ifs) {
  iwdp_iws_t iws = ifs->iws;

  if (iws && iws->ifs == ifs) {
    iws->ifs = ((void*)0);
  }
  iwdp_ifs_free(ifs);

  if (iws && iws->ws_fd > 0) {
    self->remove_fd(self, iws->ws_fd);
  }
  return IWDP_SUCCESS;
}
