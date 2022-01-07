
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int it_size; unsigned long it_base; int it_blocksize; int it_map; int * it_ops; scalar_t__ it_index; int it_page_shift; scalar_t__ it_offset; scalar_t__ it_busno; } ;


 int IOMMU_PAGE_SHIFT_4K ;
 scalar_t__ dart_tablebase ;
 int dart_tablesize ;
 int iommu_dart_ops ;
 int iommu_init_table (TYPE_1__*,int,int ,int ) ;
 TYPE_1__ iommu_table_dart ;
 int set_bit (int,int ) ;

__attribute__((used)) static void iommu_table_dart_setup(void)
{
 iommu_table_dart.it_busno = 0;
 iommu_table_dart.it_offset = 0;

 iommu_table_dart.it_size = dart_tablesize / sizeof(u32);
 iommu_table_dart.it_page_shift = IOMMU_PAGE_SHIFT_4K;


 iommu_table_dart.it_base = (unsigned long)dart_tablebase;
 iommu_table_dart.it_index = 0;
 iommu_table_dart.it_blocksize = 1;
 iommu_table_dart.it_ops = &iommu_dart_ops;
 iommu_init_table(&iommu_table_dart, -1, 0, 0);




 set_bit(iommu_table_dart.it_size - 1, iommu_table_dart.it_map);
}
