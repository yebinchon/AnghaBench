
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dn {TYPE_1__* phb; int devfn; int busno; } ;
struct TYPE_2__ {unsigned long buid; } ;


 int BUID_HI (unsigned long) ;
 int BUID_LO (unsigned long) ;
 int RTAS_CHANGE_32MSI_FN ;
 int RTAS_CHANGE_MSIX_FN ;
 int RTAS_CHANGE_MSI_FN ;
 int change_token ;
 int pr_debug (char*,int,int,int,int) ;
 scalar_t__ rtas_busy_delay (int) ;
 int rtas_call (int ,int,int,int*,int,int ,int ,int,int,int) ;
 int rtas_config_addr (int ,int ,int ) ;

__attribute__((used)) static int rtas_change_msi(struct pci_dn *pdn, u32 func, u32 num_irqs)
{
 u32 addr, seq_num, rtas_ret[3];
 unsigned long buid;
 int rc;

 addr = rtas_config_addr(pdn->busno, pdn->devfn, 0);
 buid = pdn->phb->buid;

 seq_num = 1;
 do {
  if (func == RTAS_CHANGE_MSI_FN || func == RTAS_CHANGE_MSIX_FN ||
      func == RTAS_CHANGE_32MSI_FN)
   rc = rtas_call(change_token, 6, 4, rtas_ret, addr,
     BUID_HI(buid), BUID_LO(buid),
     func, num_irqs, seq_num);
  else
   rc = rtas_call(change_token, 6, 3, rtas_ret, addr,
     BUID_HI(buid), BUID_LO(buid),
     func, num_irqs, seq_num);

  seq_num = rtas_ret[1];
 } while (rtas_busy_delay(rc));





 if (rc == 0)
  rc = rtas_ret[0];
 else if (rc > 0)
  rc = -rc;

 pr_debug("rtas_msi: ibm,change_msi(func=%d,num=%d), got %d rc = %d\n",
   func, num_irqs, rtas_ret[0], rc);

 return rc;
}
