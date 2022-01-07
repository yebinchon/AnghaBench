
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ int64_t ;


 int EIO ;
 int ENXIO ;
 int OPAL_PCI_GET_PRESENCE_STATE ;
 scalar_t__ OPAL_SUCCESS ;
 int opal_check_token (int ) ;
 scalar_t__ opal_pci_get_presence_state (int ,int ) ;

int pnv_pci_get_presence_state(uint64_t id, uint8_t *state)
{
 int64_t rc;

 if (!opal_check_token(OPAL_PCI_GET_PRESENCE_STATE))
  return -ENXIO;

 rc = opal_pci_get_presence_state(id, (uint64_t)state);
 if (rc != OPAL_SUCCESS)
  return -EIO;

 return 0;
}
