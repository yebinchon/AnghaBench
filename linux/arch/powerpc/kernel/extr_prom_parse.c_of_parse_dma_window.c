
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int * of_get_property (struct device_node*,char*,int *) ;
 void* of_n_addr_cells (struct device_node*) ;
 void* of_n_size_cells (struct device_node*) ;
 void* of_read_number (int const*,int) ;

void of_parse_dma_window(struct device_node *dn, const __be32 *dma_window,
    unsigned long *busno, unsigned long *phys,
    unsigned long *size)
{
 u32 cells;
 const __be32 *prop;


 *busno = of_read_number(dma_window, 1);
 dma_window++;

 prop = of_get_property(dn, "ibm,#dma-address-cells", ((void*)0));
 if (!prop)
  prop = of_get_property(dn, "#address-cells", ((void*)0));

 cells = prop ? of_read_number(prop, 1) : of_n_addr_cells(dn);
 *phys = of_read_number(dma_window, cells);

 dma_window += cells;

 prop = of_get_property(dn, "ibm,#dma-size-cells", ((void*)0));
 cells = prop ? of_read_number(prop, 1) : of_n_size_cells(dn);
 *size = of_read_number(dma_window, cells);
}
