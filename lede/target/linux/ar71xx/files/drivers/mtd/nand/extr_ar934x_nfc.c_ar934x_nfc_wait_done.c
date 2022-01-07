
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {int dummy; } ;


 scalar_t__ ar934x_nfc_use_irq (struct ar934x_nfc*) ;
 int ar934x_nfc_wait_dev_ready (struct ar934x_nfc*) ;
 int ar934x_nfc_wait_dma_ready (struct ar934x_nfc*) ;
 int ar934x_nfc_wait_irq (struct ar934x_nfc*) ;

__attribute__((used)) static int
ar934x_nfc_wait_done(struct ar934x_nfc *nfc)
{
 int ret;

 if (ar934x_nfc_use_irq(nfc))
  ret = ar934x_nfc_wait_irq(nfc);
 else
  ret = ar934x_nfc_wait_dev_ready(nfc);

 if (ret)
  return ret;

 return ar934x_nfc_wait_dma_ready(nfc);
}
