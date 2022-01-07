
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct vio_dev {TYPE_1__ dev; } ;
struct iommu_table {unsigned long it_page_shift; unsigned long it_size; unsigned long it_offset; int it_blocksize; int * it_ops; int it_type; scalar_t__ it_busno; int it_index; } ;
typedef int __be32 ;


 int FW_FEATURE_LPAR ;
 int GFP_KERNEL ;
 unsigned long IOMMU_PAGE_SHIFT_4K ;
 int TCE_VB ;
 scalar_t__ firmware_has_feature (int ) ;
 struct iommu_table* iommu_init_table (struct iommu_table*,int,int ,int ) ;
 int iommu_table_lpar_multi_ops ;
 int iommu_table_pseries_ops ;
 struct iommu_table* kzalloc (int,int ) ;
 int * of_get_property (int ,char*,int *) ;
 int of_parse_dma_window (int ,int const*,int *,unsigned long*,unsigned long*) ;

__attribute__((used)) static struct iommu_table *vio_build_iommu_table(struct vio_dev *dev)
{
 const __be32 *dma_window;
 struct iommu_table *tbl;
 unsigned long offset, size;

 dma_window = of_get_property(dev->dev.of_node,
      "ibm,my-dma-window", ((void*)0));
 if (!dma_window)
  return ((void*)0);

 tbl = kzalloc(sizeof(*tbl), GFP_KERNEL);
 if (tbl == ((void*)0))
  return ((void*)0);

 of_parse_dma_window(dev->dev.of_node, dma_window,
       &tbl->it_index, &offset, &size);


 tbl->it_page_shift = IOMMU_PAGE_SHIFT_4K;
 tbl->it_size = size >> tbl->it_page_shift;

 tbl->it_offset = offset >> tbl->it_page_shift;
 tbl->it_busno = 0;
 tbl->it_type = TCE_VB;
 tbl->it_blocksize = 16;

 if (firmware_has_feature(FW_FEATURE_LPAR))
  tbl->it_ops = &iommu_table_lpar_multi_ops;
 else
  tbl->it_ops = &iommu_table_pseries_ops;

 return iommu_init_table(tbl, -1, 0, 0);
}
