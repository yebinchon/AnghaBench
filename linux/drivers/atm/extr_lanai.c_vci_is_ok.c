
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t vci_t ;
struct TYPE_8__ {struct atm_vcc const* atmvcc; } ;
struct TYPE_5__ {struct atm_vcc const* atmvcc; } ;
struct lanai_vcc {TYPE_4__ rx; TYPE_1__ tx; } ;
struct lanai_dev {scalar_t__ naal0; int conf2; struct lanai_vcc** vccs; struct atm_vcc const* cbrvcc; } ;
struct TYPE_7__ {scalar_t__ traffic_class; } ;
struct TYPE_6__ {scalar_t__ traffic_class; } ;
struct atm_qos {scalar_t__ aal; TYPE_3__ rxtp; TYPE_2__ txtp; } ;
struct atm_vcc {struct atm_qos qos; } ;


 scalar_t__ ATM_AAL0 ;
 scalar_t__ ATM_CBR ;
 scalar_t__ ATM_NONE ;
 int CONFIG2_VCI0_NORMAL ;
 int conf2_write_if_powerup (struct lanai_dev*) ;
 scalar_t__ unlikely (int ) ;
 int vci0_is_ok (struct lanai_dev*,struct atm_qos const*) ;

__attribute__((used)) static int vci_is_ok(struct lanai_dev *lanai, vci_t vci,
 const struct atm_vcc *atmvcc)
{
 const struct atm_qos *qos = &atmvcc->qos;
 const struct lanai_vcc *lvcc = lanai->vccs[vci];
 if (vci == 0 && !vci0_is_ok(lanai, qos))
  return 0;
 if (unlikely(lvcc != ((void*)0))) {
  if (qos->rxtp.traffic_class != ATM_NONE &&
      lvcc->rx.atmvcc != ((void*)0) && lvcc->rx.atmvcc != atmvcc)
   return 0;
  if (qos->txtp.traffic_class != ATM_NONE &&
      lvcc->tx.atmvcc != ((void*)0) && lvcc->tx.atmvcc != atmvcc)
   return 0;
  if (qos->txtp.traffic_class == ATM_CBR &&
      lanai->cbrvcc != ((void*)0) && lanai->cbrvcc != atmvcc)
   return 0;
 }
 if (qos->aal == ATM_AAL0 && lanai->naal0 == 0 &&
     qos->rxtp.traffic_class != ATM_NONE) {
  const struct lanai_vcc *vci0 = lanai->vccs[0];
  if (vci0 != ((void*)0) && vci0->rx.atmvcc != ((void*)0))
   return 0;
  lanai->conf2 &= ~CONFIG2_VCI0_NORMAL;
  conf2_write_if_powerup(lanai);
 }
 return 1;
}
