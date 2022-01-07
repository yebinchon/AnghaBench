
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev_bus_addr; } ;
struct gnttab_cache_flush {scalar_t__ offset; size_t length; TYPE_1__ a; int op; } ;
typedef int dma_addr_t ;


 int GNTTABOP_cache_flush ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_cache_flush*,int) ;
 int XEN_PAGE_MASK ;
 scalar_t__ XEN_PAGE_SIZE ;
 scalar_t__ xen_offset_in_page (int) ;

__attribute__((used)) static void dma_cache_maint(dma_addr_t handle, size_t size, u32 op)
{
 struct gnttab_cache_flush cflush;

 cflush.a.dev_bus_addr = handle & XEN_PAGE_MASK;
 cflush.offset = xen_offset_in_page(handle);
 cflush.op = op;

 do {
  if (size + cflush.offset > XEN_PAGE_SIZE)
   cflush.length = XEN_PAGE_SIZE - cflush.offset;
  else
   cflush.length = size;

  HYPERVISOR_grant_table_op(GNTTABOP_cache_flush, &cflush, 1);

  cflush.offset = 0;
  cflush.a.dev_bus_addr += cflush.length;
  size -= cflush.length;
 } while (size);
}
