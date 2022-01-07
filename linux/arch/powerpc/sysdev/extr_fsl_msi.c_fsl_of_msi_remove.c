
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ bitmap; } ;
struct TYPE_4__ {int * prev; } ;
struct fsl_msi {int virq; int feature; int msi_regs; TYPE_1__ bitmap; struct fsl_msi** cascade_array; TYPE_2__ list; } ;


 int BUG_ON (int) ;
 int FSL_PIC_IP_MASK ;
 int FSL_PIC_IP_VMPIC ;
 int NR_MSI_REG_MAX ;
 int free_irq (int,struct fsl_msi*) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int) ;
 int kfree (struct fsl_msi*) ;
 int list_del (TYPE_2__*) ;
 int msi_bitmap_free (TYPE_1__*) ;
 struct fsl_msi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsl_of_msi_remove(struct platform_device *ofdev)
{
 struct fsl_msi *msi = platform_get_drvdata(ofdev);
 int virq, i;

 if (msi->list.prev != ((void*)0))
  list_del(&msi->list);
 for (i = 0; i < NR_MSI_REG_MAX; i++) {
  if (msi->cascade_array[i]) {
   virq = msi->cascade_array[i]->virq;

   BUG_ON(!virq);

   free_irq(virq, msi->cascade_array[i]);
   kfree(msi->cascade_array[i]);
   irq_dispose_mapping(virq);
  }
 }
 if (msi->bitmap.bitmap)
  msi_bitmap_free(&msi->bitmap);
 if ((msi->feature & FSL_PIC_IP_MASK) != FSL_PIC_IP_VMPIC)
  iounmap(msi->msi_regs);
 kfree(msi);

 return 0;
}
