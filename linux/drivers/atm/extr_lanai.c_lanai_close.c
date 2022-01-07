
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {struct atm_vcc* atmvcc; int buf; } ;
struct TYPE_7__ {struct atm_vcc* atmvcc; int buf; } ;
struct lanai_vcc {scalar_t__ nref; TYPE_4__ tx; int * vbase; TYPE_3__ rx; } ;
struct lanai_dev {scalar_t__ naal0; int pci; struct atm_vcc* cbrvcc; } ;
struct TYPE_6__ {scalar_t__ aal; } ;
struct atm_vcc {int flags; int * dev_data; TYPE_2__ qos; TYPE_1__* dev; } ;
struct TYPE_5__ {scalar_t__ dev_data; } ;


 scalar_t__ ATM_AAL0 ;
 int ATM_VF_ADDR ;
 int ATM_VF_PARTIAL ;
 int ATM_VF_READY ;
 int aal0_buffer_free (struct lanai_dev*) ;
 int clear_bit (int ,int *) ;
 int host_vcc_unbind (struct lanai_dev*,struct lanai_vcc*) ;
 int kfree (struct lanai_vcc*) ;
 int lanai_buf_deallocate (int *,int ) ;
 int lanai_cbr_shutdown (struct lanai_dev*) ;
 int lanai_shutdown_rx_vci (struct lanai_vcc*) ;
 int lanai_shutdown_tx_vci (struct lanai_dev*,struct lanai_vcc*) ;

__attribute__((used)) static void lanai_close(struct atm_vcc *atmvcc)
{
 struct lanai_vcc *lvcc = (struct lanai_vcc *) atmvcc->dev_data;
 struct lanai_dev *lanai = (struct lanai_dev *) atmvcc->dev->dev_data;
 if (lvcc == ((void*)0))
  return;
 clear_bit(ATM_VF_READY, &atmvcc->flags);
 clear_bit(ATM_VF_PARTIAL, &atmvcc->flags);
 if (lvcc->rx.atmvcc == atmvcc) {
  lanai_shutdown_rx_vci(lvcc);
  if (atmvcc->qos.aal == ATM_AAL0) {
   if (--lanai->naal0 <= 0)
    aal0_buffer_free(lanai);
  } else
   lanai_buf_deallocate(&lvcc->rx.buf, lanai->pci);
  lvcc->rx.atmvcc = ((void*)0);
 }
 if (lvcc->tx.atmvcc == atmvcc) {
  if (atmvcc == lanai->cbrvcc) {
   if (lvcc->vbase != ((void*)0))
    lanai_cbr_shutdown(lanai);
   lanai->cbrvcc = ((void*)0);
  }
  lanai_shutdown_tx_vci(lanai, lvcc);
  lanai_buf_deallocate(&lvcc->tx.buf, lanai->pci);
  lvcc->tx.atmvcc = ((void*)0);
 }
 if (--lvcc->nref == 0) {
  host_vcc_unbind(lanai, lvcc);
  kfree(lvcc);
 }
 atmvcc->dev_data = ((void*)0);
 clear_bit(ATM_VF_ADDR, &atmvcc->flags);
}
