
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic {int flags; int msi_bitmap; int irqhost; int num_sources; } ;


 int MPIC_U3_HT_IRQS ;
 int irq_domain_get_of_node (int ) ;
 int mpic_msi_reserve_u3_hwirqs (struct mpic*) ;
 int msi_bitmap_alloc (int *,int ,int ) ;
 int msi_bitmap_free (int *) ;
 int msi_bitmap_reserve_dt_hwirqs (int *) ;

int mpic_msi_init_allocator(struct mpic *mpic)
{
 int rc;

 rc = msi_bitmap_alloc(&mpic->msi_bitmap, mpic->num_sources,
         irq_domain_get_of_node(mpic->irqhost));
 if (rc)
  return rc;

 rc = msi_bitmap_reserve_dt_hwirqs(&mpic->msi_bitmap);
 if (rc > 0) {
  if (mpic->flags & MPIC_U3_HT_IRQS)
   rc = mpic_msi_reserve_u3_hwirqs(mpic);

  if (rc) {
   msi_bitmap_free(&mpic->msi_bitmap);
   return rc;
  }
 }

 return 0;
}
