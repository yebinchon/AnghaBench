
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* iwdp_t ;
typedef int iwdp_status ;
typedef TYPE_2__* iwdp_iwi_t ;
typedef TYPE_3__* iwdp_iport_t ;
typedef scalar_t__ iwdp_ipage_t ;
typedef int ht_t ;
struct TYPE_11__ {scalar_t__ s_fd; int * iwi; } ;
struct TYPE_10__ {int page_num_to_ipage; TYPE_3__* iport; } ;
struct TYPE_9__ {int (* remove_fd ) (TYPE_1__*,scalar_t__) ;} ;


 int IWDP_SUCCESS ;
 int free (scalar_t__*) ;
 int ht_clear (int ) ;
 scalar_t__ ht_values (int ) ;
 int iwdp_ipage_free (scalar_t__) ;
 int iwdp_iwi_free (TYPE_2__*) ;
 int iwdp_log_disconnect (TYPE_3__*) ;
 int stub1 (TYPE_1__*,scalar_t__) ;

iwdp_status iwdp_iwi_close(iwdp_t self, iwdp_iwi_t iwi) {
  iwdp_iport_t iport = iwi->iport;
  if (iport) {
    iwdp_log_disconnect(iport);

    if (iport->iwi) {
      iport->iwi = ((void*)0);
    }
  }

  ht_t ipage_ht = iwi->page_num_to_ipage;
  iwdp_ipage_t *ipages = (iwdp_ipage_t *)ht_values(ipage_ht);
  ht_clear(ipage_ht);
  iwdp_ipage_t *ipp;
  for (ipp = ipages; *ipp; ipp++) {
    iwdp_ipage_free((iwdp_ipage_t)*ipp);
  }
  free(ipages);
  iwdp_iwi_free(iwi);

  if (iport && iport->s_fd > 0) {
    self->remove_fd(self, iport->s_fd);
  }
  return IWDP_SUCCESS;
}
