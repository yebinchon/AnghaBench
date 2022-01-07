
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int dibvo; int noi; } ;
struct zpci_fib {int fmt; TYPE_1__ fmt1; int member_0; } ;
struct zpci_dev {int msi_first_bit; int msi_nr_irqs; int fh; } ;


 int EIO ;
 int ZPCI_CREATE_REQ (int ,int ,int ) ;
 int ZPCI_MOD_FC_REG_INT_D ;
 scalar_t__ zpci_mod_fc (int ,struct zpci_fib*,int *) ;

__attribute__((used)) static int zpci_set_directed_irq(struct zpci_dev *zdev)
{
 u64 req = ZPCI_CREATE_REQ(zdev->fh, 0, ZPCI_MOD_FC_REG_INT_D);
 struct zpci_fib fib = {0};
 u8 status;

 fib.fmt = 1;
 fib.fmt1.noi = zdev->msi_nr_irqs;
 fib.fmt1.dibvo = zdev->msi_first_bit;

 return zpci_mod_fc(req, &fib, &status) ? -EIO : 0;
}
