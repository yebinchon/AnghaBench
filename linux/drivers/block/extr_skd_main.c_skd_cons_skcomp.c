
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {struct fit_comp_error_info* skerr_table; struct fit_completion_entry_v1* skcomp_table; int cq_dma_address; TYPE_1__* pdev; } ;
struct fit_completion_entry_v1 {int dummy; } ;
struct fit_comp_error_info {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SKD_N_COMPLETION_ENTRY ;
 int SKD_SKCOMP_SIZE ;
 int dev_dbg (int *,char*,int ,int) ;
 struct fit_completion_entry_v1* dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static int skd_cons_skcomp(struct skd_device *skdev)
{
 int rc = 0;
 struct fit_completion_entry_v1 *skcomp;

 dev_dbg(&skdev->pdev->dev,
  "comp pci_alloc, total bytes %zd entries %d\n",
  SKD_SKCOMP_SIZE, SKD_N_COMPLETION_ENTRY);

 skcomp = dma_alloc_coherent(&skdev->pdev->dev, SKD_SKCOMP_SIZE,
        &skdev->cq_dma_address, GFP_KERNEL);

 if (skcomp == ((void*)0)) {
  rc = -ENOMEM;
  goto err_out;
 }

 skdev->skcomp_table = skcomp;
 skdev->skerr_table = (struct fit_comp_error_info *)((char *)skcomp +
          sizeof(*skcomp) *
          SKD_N_COMPLETION_ENTRY);

err_out:
 return rc;
}
