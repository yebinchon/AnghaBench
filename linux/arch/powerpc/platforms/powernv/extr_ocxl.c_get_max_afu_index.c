
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int AFU_INDEX_MASK ;
 int AFU_INDEX_SHIFT ;
 int AFU_PRESENT ;
 int ESRCH ;
 int OCXL_DVSEC_FUNC_ID ;
 scalar_t__ OCXL_DVSEC_FUNC_OFF_INDEX ;
 int find_dvsec_from_pos (struct pci_dev*,int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int get_max_afu_index(struct pci_dev *dev, int *afu_idx)
{
 int pos;
 u32 val;

 pos = find_dvsec_from_pos(dev, OCXL_DVSEC_FUNC_ID, 0);
 if (!pos)
  return -ESRCH;

 pci_read_config_dword(dev, pos + OCXL_DVSEC_FUNC_OFF_INDEX, &val);
 if (val & AFU_PRESENT)
  *afu_idx = (val & AFU_INDEX_MASK) >> AFU_INDEX_SHIFT;
 else
  *afu_idx = -1;
 return 0;
}
