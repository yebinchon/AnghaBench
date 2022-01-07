
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {int sum; unsigned long aibv; unsigned long aisb; int aisbo; scalar_t__ aibvo; int noi; int isc; } ;
struct zpci_fib {TYPE_1__ fmt0; int member_0; } ;
struct zpci_dev {int aisb; TYPE_3__* aibv; int fh; } ;
struct TYPE_6__ {scalar_t__ vector; } ;
struct TYPE_5__ {scalar_t__ vector; } ;


 int EIO ;
 int PCI_ISC ;
 int ZPCI_CREATE_REQ (int ,int ,int ) ;
 int ZPCI_MOD_FC_REG_INT ;
 int airq_iv_end (TYPE_3__*) ;
 scalar_t__ zpci_mod_fc (int ,struct zpci_fib*,int *) ;
 TYPE_2__* zpci_sbv ;

__attribute__((used)) static int zpci_set_airq(struct zpci_dev *zdev)
{
 u64 req = ZPCI_CREATE_REQ(zdev->fh, 0, ZPCI_MOD_FC_REG_INT);
 struct zpci_fib fib = {0};
 u8 status;

 fib.fmt0.isc = PCI_ISC;
 fib.fmt0.sum = 1;
 fib.fmt0.noi = airq_iv_end(zdev->aibv);
 fib.fmt0.aibv = (unsigned long) zdev->aibv->vector;
 fib.fmt0.aibvo = 0;
 fib.fmt0.aisb = (unsigned long) zpci_sbv->vector + (zdev->aisb/64)*8;
 fib.fmt0.aisbo = zdev->aisb & 63;

 return zpci_mod_fc(req, &fib, &status) ? -EIO : 0;
}
