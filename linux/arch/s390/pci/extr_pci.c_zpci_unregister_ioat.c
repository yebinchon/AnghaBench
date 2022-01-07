
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct zpci_fib {int member_0; } ;
struct zpci_dev {int fh; } ;


 int EIO ;
 int ZPCI_CREATE_REQ (int ,int,int ) ;
 int ZPCI_MOD_FC_DEREG_IOAT ;
 int zpci_mod_fc (int ,struct zpci_fib*,int*) ;

int zpci_unregister_ioat(struct zpci_dev *zdev, u8 dmaas)
{
 u64 req = ZPCI_CREATE_REQ(zdev->fh, dmaas, ZPCI_MOD_FC_DEREG_IOAT);
 struct zpci_fib fib = {0};
 u8 cc, status;

 cc = zpci_mod_fc(req, &fib, &status);
 if (cc == 3)
  cc = 0;
 return cc ? -EIO : 0;
}
