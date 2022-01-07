
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct agp_bridge_data {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ALI_CACHE_FLUSH_ADDR_MASK ;
 int ALI_CACHE_FLUSH_CTRL ;
 int ALI_CACHE_FLUSH_EN ;
 TYPE_1__* agp_bridge ;
 struct page* agp_generic_alloc_page (TYPE_1__*) ;
 int page_to_phys (struct page*) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static struct page *m1541_alloc_page(struct agp_bridge_data *bridge)
{
 struct page *page = agp_generic_alloc_page(agp_bridge);
 u32 temp;

 if (!page)
  return ((void*)0);

 pci_read_config_dword(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL, &temp);
 pci_write_config_dword(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
   (((temp & ALI_CACHE_FLUSH_ADDR_MASK) |
     page_to_phys(page)) | ALI_CACHE_FLUSH_EN ));
 return page;
}
