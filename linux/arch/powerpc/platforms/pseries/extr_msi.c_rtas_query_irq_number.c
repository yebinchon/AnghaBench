
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
 int pr_debug (char*,int) ;
 int query_token ;
 scalar_t__ rtas_busy_delay (int) ;
 int rtas_call (int ,int,int,int*,int,int ,int ,int) ;
 int rtas_config_addr (int ,int ,int ) ;

__attribute__((used)) static int rtas_query_irq_number(struct pci_dn *pdn, int offset)
{
 u32 addr, rtas_ret[2];
 unsigned long buid;
 int rc;

 addr = rtas_config_addr(pdn->busno, pdn->devfn, 0);
 buid = pdn->phb->buid;

 do {
  rc = rtas_call(query_token, 4, 3, rtas_ret, addr,
          BUID_HI(buid), BUID_LO(buid), offset);
 } while (rtas_busy_delay(rc));

 if (rc) {
  pr_debug("rtas_msi: error (%d) querying source number\n", rc);
  return rc;
 }

 return rtas_ret[0];
}
