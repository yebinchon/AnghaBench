
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_GET_24X7_CATALOG_PAGE ;
 int IS_ALIGNED (unsigned long,int) ;
 int WARN_ON (int) ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long,unsigned long) ;
 int pr_devel (char*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static long h_get_24x7_catalog_page_(unsigned long phys_4096,
         unsigned long version, unsigned long index)
{
 pr_devel("h_get_24x7_catalog_page(0x%lx, %lu, %lu)",
   phys_4096, version, index);

 WARN_ON(!IS_ALIGNED(phys_4096, 4096));

 return plpar_hcall_norets(H_GET_24X7_CATALOG_PAGE,
   phys_4096, version, index);
}
