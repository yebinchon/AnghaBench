
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_msi {int bitmap; int irqhost; } ;


 int NR_MSI_IRQS_MAX ;
 int irq_domain_get_of_node (int ) ;
 int msi_bitmap_alloc (int *,int,int ) ;
 int msi_bitmap_reserve_hwirq (int *,int) ;

__attribute__((used)) static int fsl_msi_init_allocator(struct fsl_msi *msi_data)
{
 int rc, hwirq;

 rc = msi_bitmap_alloc(&msi_data->bitmap, NR_MSI_IRQS_MAX,
         irq_domain_get_of_node(msi_data->irqhost));
 if (rc)
  return rc;





 for (hwirq = 0; hwirq < NR_MSI_IRQS_MAX; hwirq++)
  msi_bitmap_reserve_hwirq(&msi_data->bitmap, hwirq);

 return 0;
}
