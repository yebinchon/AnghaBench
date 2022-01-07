
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned int LDC_MAP_DIRECT ;
 unsigned int LDC_MAP_IO ;
 unsigned int LDC_MAP_R ;
 unsigned int LDC_MAP_SHADOW ;
 unsigned int LDC_MAP_W ;
 unsigned int LDC_MAP_X ;
 int LDC_MTE_COPY_R ;
 int LDC_MTE_COPY_W ;
 int LDC_MTE_EXEC ;
 int LDC_MTE_IOMMU_R ;
 int LDC_MTE_IOMMU_W ;
 int LDC_MTE_READ ;
 int LDC_MTE_WRITE ;
 int pagesize_code () ;

__attribute__((used)) static u64 perm_to_mte(unsigned int map_perm)
{
 u64 mte_base;

 mte_base = pagesize_code();

 if (map_perm & LDC_MAP_SHADOW) {
  if (map_perm & LDC_MAP_R)
   mte_base |= LDC_MTE_COPY_R;
  if (map_perm & LDC_MAP_W)
   mte_base |= LDC_MTE_COPY_W;
 }
 if (map_perm & LDC_MAP_DIRECT) {
  if (map_perm & LDC_MAP_R)
   mte_base |= LDC_MTE_READ;
  if (map_perm & LDC_MAP_W)
   mte_base |= LDC_MTE_WRITE;
  if (map_perm & LDC_MAP_X)
   mte_base |= LDC_MTE_EXEC;
 }
 if (map_perm & LDC_MAP_IO) {
  if (map_perm & LDC_MAP_R)
   mte_base |= LDC_MTE_IOMMU_R;
  if (map_perm & LDC_MAP_W)
   mte_base |= LDC_MTE_IOMMU_W;
 }

 return mte_base;
}
