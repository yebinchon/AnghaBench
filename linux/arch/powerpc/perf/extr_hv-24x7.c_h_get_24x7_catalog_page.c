
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 long h_get_24x7_catalog_page_ (int ,int ,int ) ;
 int virt_to_phys (char*) ;

__attribute__((used)) static long h_get_24x7_catalog_page(char page[], u64 version, u32 index)
{
 return h_get_24x7_catalog_page_(virt_to_phys(page),
     version, index);
}
