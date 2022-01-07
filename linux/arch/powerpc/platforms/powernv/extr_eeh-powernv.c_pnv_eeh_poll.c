
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s64 ;


 scalar_t__ OPAL_HARDWARE ;
 scalar_t__ SYSTEM_RUNNING ;
 int msleep (scalar_t__) ;
 scalar_t__ opal_pci_poll (unsigned long) ;
 scalar_t__ system_state ;
 int udelay (int) ;

__attribute__((used)) static s64 pnv_eeh_poll(unsigned long id)
{
 s64 rc = OPAL_HARDWARE;

 while (1) {
  rc = opal_pci_poll(id);
  if (rc <= 0)
   break;

  if (system_state < SYSTEM_RUNNING)
   udelay(1000 * rc);
  else
   msleep(rc);
 }

 return rc;
}
