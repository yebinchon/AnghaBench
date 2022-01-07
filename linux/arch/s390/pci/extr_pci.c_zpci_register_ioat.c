
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct zpci_fib {int pba; int pal; int iota; int member_0; } ;
struct zpci_dev {int fh; } ;


 int EIO ;
 int WARN_ON_ONCE (int) ;
 int ZPCI_CREATE_REQ (int ,int ,int ) ;
 int ZPCI_IOTA_RTTO_FLAG ;
 int ZPCI_MOD_FC_REG_IOAT ;
 scalar_t__ zpci_mod_fc (int,struct zpci_fib*,int *) ;

int zpci_register_ioat(struct zpci_dev *zdev, u8 dmaas,
         u64 base, u64 limit, u64 iota)
{
 u64 req = ZPCI_CREATE_REQ(zdev->fh, dmaas, ZPCI_MOD_FC_REG_IOAT);
 struct zpci_fib fib = {0};
 u8 status;

 WARN_ON_ONCE(iota & 0x3fff);
 fib.pba = base;
 fib.pal = limit;
 fib.iota = iota | ZPCI_IOTA_RTTO_FLAG;
 return zpci_mod_fc(req, &fib, &status) ? -EIO : 0;
}
