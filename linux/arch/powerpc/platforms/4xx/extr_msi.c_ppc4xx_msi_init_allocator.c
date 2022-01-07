
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppc4xx_msi {int bitmap; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int msi_bitmap_alloc (int *,int ,int ) ;
 int msi_bitmap_free (int *) ;
 int msi_bitmap_reserve_dt_hwirqs (int *) ;
 int msi_irqs ;

__attribute__((used)) static int ppc4xx_msi_init_allocator(struct platform_device *dev,
  struct ppc4xx_msi *msi_data)
{
 int err;

 err = msi_bitmap_alloc(&msi_data->bitmap, msi_irqs,
         dev->dev.of_node);
 if (err)
  return err;

 err = msi_bitmap_reserve_dt_hwirqs(&msi_data->bitmap);
 if (err < 0) {
  msi_bitmap_free(&msi_data->bitmap);
  return err;
 }

 return 0;
}
