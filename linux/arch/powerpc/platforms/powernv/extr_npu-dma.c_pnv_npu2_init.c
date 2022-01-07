
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {struct npu* npu; } ;
struct npu {int index; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int NV_MAX_NPUS ;
 scalar_t__ WARN_ON (int) ;
 int kfree (struct npu*) ;
 struct npu* kzalloc (int,int ) ;

int pnv_npu2_init(struct pci_controller *hose)
{
 static int npu_index;
 struct npu *npu;
 int ret;

 npu = kzalloc(sizeof(*npu), GFP_KERNEL);
 if (!npu)
  return -ENOMEM;

 npu_index++;
 if (WARN_ON(npu_index >= NV_MAX_NPUS)) {
  ret = -ENOSPC;
  goto fail_exit;
 }
 npu->index = npu_index;
 hose->npu = npu;

 return 0;

fail_exit:
 kfree(npu);
 return ret;
}
