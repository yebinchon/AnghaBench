
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;


 scalar_t__ OCXL_DVSEC_AFU_CTRL_AFU_IDX ;
 int OCXL_DVSEC_AFU_CTRL_ID ;
 int find_dvsec_from_pos (struct pci_dev*,int ,int) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int find_dvsec_afu_ctrl(struct pci_dev *dev, u8 afu_idx)
{
 int vsec = 0;
 u8 idx;

 while ((vsec = find_dvsec_from_pos(dev, OCXL_DVSEC_AFU_CTRL_ID,
        vsec))) {
  pci_read_config_byte(dev, vsec + OCXL_DVSEC_AFU_CTRL_AFU_IDX,
    &idx);
  if (idx == afu_idx)
   return vsec;
 }
 return 0;
}
