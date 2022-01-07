
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cvmx_bootmem_named_block_desc {scalar_t__ size; scalar_t__ base_addr; } ;
struct TYPE_2__ {int major_version; scalar_t__ minor_version; } ;


 int CVMX_BOOTMEM_FLAG_NO_LOCKING ;
 int __cvmx_bootmem_phy_free (scalar_t__,scalar_t__,int ) ;
 TYPE_1__* cvmx_bootmem_desc ;
 int cvmx_bootmem_lock () ;
 struct cvmx_bootmem_named_block_desc* cvmx_bootmem_phy_named_block_find (char*,int ) ;
 int cvmx_bootmem_unlock () ;
 int cvmx_dprintf (char*,...) ;

__attribute__((used)) static int cvmx_bootmem_phy_named_block_free(char *name, uint32_t flags)
{
 struct cvmx_bootmem_named_block_desc *named_block_ptr;

 if (cvmx_bootmem_desc->major_version != 3) {
  cvmx_dprintf("ERROR: Incompatible bootmem descriptor version: "
        "%d.%d at addr: %p\n",
        (int)cvmx_bootmem_desc->major_version,
        (int)cvmx_bootmem_desc->minor_version,
        cvmx_bootmem_desc);
  return 0;
 }
 cvmx_bootmem_lock();

 named_block_ptr =
     cvmx_bootmem_phy_named_block_find(name,
           CVMX_BOOTMEM_FLAG_NO_LOCKING);
 if (named_block_ptr) {







  __cvmx_bootmem_phy_free(named_block_ptr->base_addr,
     named_block_ptr->size,
     CVMX_BOOTMEM_FLAG_NO_LOCKING);
  named_block_ptr->size = 0;

 }

 cvmx_bootmem_unlock();
 return named_block_ptr != ((void*)0);
}
