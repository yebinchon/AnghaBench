
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_st {struct hci_dev* hdev; } ;
struct TYPE_2__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; } ;






__attribute__((used)) static inline void ti_st_tx_complete(struct ti_st *hst, int pkt_type)
{
 struct hci_dev *hdev = hst->hdev;


 switch (pkt_type) {
 case 129:
  hdev->stat.cmd_tx++;
  break;

 case 130:
  hdev->stat.acl_tx++;
  break;

 case 128:
  hdev->stat.sco_tx++;
  break;
 }
}
