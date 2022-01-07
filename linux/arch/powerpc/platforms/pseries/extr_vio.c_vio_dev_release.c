
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;
struct device {int of_node; } ;


 struct iommu_table* get_iommu_table_base (struct device*) ;
 int iommu_tce_table_put (struct iommu_table*) ;
 int kfree (int ) ;
 int of_node_put (int ) ;
 int to_vio_dev (struct device*) ;

__attribute__((used)) static void vio_dev_release(struct device *dev)
{
 struct iommu_table *tbl = get_iommu_table_base(dev);

 if (tbl)
  iommu_tce_table_put(tbl);
 of_node_put(dev->of_node);
 kfree(to_vio_dev(dev));
}
