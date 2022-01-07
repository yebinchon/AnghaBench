
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct cvmx_bootmem_named_block_desc {int base_addr; scalar_t__* name; scalar_t__ size; } ;
typedef int int64_t ;
typedef int cvmx_spinlock_t ;
struct TYPE_2__ {int major_version; int named_block_name_len; int lock; scalar_t__ minor_version; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int CVMX_BOOTMEM_ALIGNMENT_SIZE ;
 int CVMX_BOOTMEM_FLAG_NO_LOCKING ;
 TYPE_1__* cvmx_bootmem_desc ;
 int cvmx_bootmem_phy_alloc (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 struct cvmx_bootmem_named_block_desc* cvmx_bootmem_phy_named_block_find (char*,int) ;
 int cvmx_dprintf (char*,int,int,...) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 int strncpy (scalar_t__*,char*,int) ;

int64_t cvmx_bootmem_phy_named_block_alloc(uint64_t size, uint64_t min_addr,
        uint64_t max_addr,
        uint64_t alignment,
        char *name,
        uint32_t flags)
{
 int64_t addr_allocated;
 struct cvmx_bootmem_named_block_desc *named_block_desc_ptr;
 if (cvmx_bootmem_desc->major_version != 3) {
  cvmx_dprintf("ERROR: Incompatible bootmem descriptor version: "
        "%d.%d at addr: %p\n",
        (int)cvmx_bootmem_desc->major_version,
        (int)cvmx_bootmem_desc->minor_version,
        cvmx_bootmem_desc);
  return -1;
 }





 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_spinlock_lock((cvmx_spinlock_t *)&(cvmx_bootmem_desc->lock));


 named_block_desc_ptr =
  cvmx_bootmem_phy_named_block_find(((void*)0),
        flags | CVMX_BOOTMEM_FLAG_NO_LOCKING);





 if (cvmx_bootmem_phy_named_block_find(name,
           flags | CVMX_BOOTMEM_FLAG_NO_LOCKING) || !named_block_desc_ptr) {
  if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
   cvmx_spinlock_unlock((cvmx_spinlock_t *)&(cvmx_bootmem_desc->lock));
  return -1;
 }
 size = ALIGN(size, CVMX_BOOTMEM_ALIGNMENT_SIZE);

 addr_allocated = cvmx_bootmem_phy_alloc(size, min_addr, max_addr,
      alignment,
      flags | CVMX_BOOTMEM_FLAG_NO_LOCKING);
 if (addr_allocated >= 0) {
  named_block_desc_ptr->base_addr = addr_allocated;
  named_block_desc_ptr->size = size;
  strncpy(named_block_desc_ptr->name, name,
   cvmx_bootmem_desc->named_block_name_len);
  named_block_desc_ptr->name[cvmx_bootmem_desc->named_block_name_len - 1] = 0;
 }

 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_spinlock_unlock((cvmx_spinlock_t *)&(cvmx_bootmem_desc->lock));
 return addr_allocated;
}
