
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_system_bus_device {int d_region; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 struct ps3_system_bus_device* ps3_dev_to_system_bus_dev (struct device*) ;
 int ps3_dma_unmap (int ,int ,size_t) ;

__attribute__((used)) static void ps3_free_coherent(struct device *_dev, size_t size, void *vaddr,
         dma_addr_t dma_handle, unsigned long attrs)
{
 struct ps3_system_bus_device *dev = ps3_dev_to_system_bus_dev(_dev);

 ps3_dma_unmap(dev->d_region, dma_handle, size);
 free_pages((unsigned long)vaddr, get_order(size));
}
