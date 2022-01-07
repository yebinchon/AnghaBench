
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ int64_t ;


 int EIO ;
 int ENXIO ;
 int OPAL_GET_DEVICE_TREE ;
 scalar_t__ OPAL_SUCCESS ;
 int opal_check_token (int ) ;
 scalar_t__ opal_get_device_tree (int ,int ,int ) ;

int pnv_pci_get_device_tree(uint32_t phandle, void *buf, uint64_t len)
{
 int64_t rc;

 if (!opal_check_token(OPAL_GET_DEVICE_TREE))
  return -ENXIO;

 rc = opal_get_device_tree(phandle, (uint64_t)buf, len);
 if (rc < OPAL_SUCCESS)
  return -EIO;

 return rc;
}
