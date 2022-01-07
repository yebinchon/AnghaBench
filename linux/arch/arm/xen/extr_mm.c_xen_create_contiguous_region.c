
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int EINVAL ;
 int xen_initial_domain () ;

int xen_create_contiguous_region(phys_addr_t pstart, unsigned int order,
     unsigned int address_bits,
     dma_addr_t *dma_handle)
{
 if (!xen_initial_domain())
  return -EINVAL;


 *dma_handle = pstart;
 return 0;
}
