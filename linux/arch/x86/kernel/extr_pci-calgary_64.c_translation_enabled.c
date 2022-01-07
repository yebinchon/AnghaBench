
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;



__attribute__((used)) static inline int translation_enabled(struct iommu_table *tbl)
{

 return (tbl != ((void*)0));
}
