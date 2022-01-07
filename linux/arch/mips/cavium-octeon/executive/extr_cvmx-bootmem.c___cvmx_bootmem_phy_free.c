
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int major_version; scalar_t__ head_addr; scalar_t__ minor_version; } ;


 int CVMX_BOOTMEM_FLAG_NO_LOCKING ;
 TYPE_1__* cvmx_bootmem_desc ;
 int cvmx_bootmem_lock () ;
 scalar_t__ cvmx_bootmem_phy_get_next (scalar_t__) ;
 scalar_t__ cvmx_bootmem_phy_get_size (scalar_t__) ;
 int cvmx_bootmem_phy_set_next (scalar_t__,scalar_t__) ;
 int cvmx_bootmem_phy_set_size (scalar_t__,scalar_t__) ;
 int cvmx_bootmem_unlock () ;
 int cvmx_dprintf (char*,int,int,...) ;

int __cvmx_bootmem_phy_free(uint64_t phy_addr, uint64_t size, uint32_t flags)
{
 uint64_t cur_addr;
 uint64_t prev_addr = 0;
 int retval = 0;





 if (cvmx_bootmem_desc->major_version > 3) {
  cvmx_dprintf("ERROR: Incompatible bootmem descriptor "
        "version: %d.%d at addr: %p\n",
        (int)cvmx_bootmem_desc->major_version,
        (int)cvmx_bootmem_desc->minor_version,
        cvmx_bootmem_desc);
  return 0;
 }


 if (!size)
  return 0;

 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_bootmem_lock();
 cur_addr = cvmx_bootmem_desc->head_addr;
 if (cur_addr == 0 || phy_addr < cur_addr) {

  if (cur_addr && phy_addr + size > cur_addr)
   goto bootmem_free_done;
  else if (phy_addr + size == cur_addr) {

   cvmx_bootmem_phy_set_next(phy_addr,
        cvmx_bootmem_phy_get_next
        (cur_addr));
   cvmx_bootmem_phy_set_size(phy_addr,
        cvmx_bootmem_phy_get_size
        (cur_addr) + size);
   cvmx_bootmem_desc->head_addr = phy_addr;

  } else {

   cvmx_bootmem_phy_set_next(phy_addr, cur_addr);
   cvmx_bootmem_phy_set_size(phy_addr, size);
   cvmx_bootmem_desc->head_addr = phy_addr;
  }
  retval = 1;
  goto bootmem_free_done;
 }


 while (cur_addr && phy_addr > cur_addr) {
  prev_addr = cur_addr;
  cur_addr = cvmx_bootmem_phy_get_next(cur_addr);
 }

 if (!cur_addr) {





  if (prev_addr + cvmx_bootmem_phy_get_size(prev_addr) ==
      phy_addr) {
   cvmx_bootmem_phy_set_size(prev_addr,
        cvmx_bootmem_phy_get_size
        (prev_addr) + size);
  } else {
   cvmx_bootmem_phy_set_next(prev_addr, phy_addr);
   cvmx_bootmem_phy_set_size(phy_addr, size);
   cvmx_bootmem_phy_set_next(phy_addr, 0);
  }
  retval = 1;
  goto bootmem_free_done;
 } else {




  if (prev_addr + cvmx_bootmem_phy_get_size(prev_addr) ==
      phy_addr) {

   cvmx_bootmem_phy_set_size(prev_addr,
        cvmx_bootmem_phy_get_size
        (prev_addr) + size);
   if (phy_addr + size == cur_addr) {

    cvmx_bootmem_phy_set_size(prev_addr,
     cvmx_bootmem_phy_get_size(cur_addr) +
     cvmx_bootmem_phy_get_size(prev_addr));
    cvmx_bootmem_phy_set_next(prev_addr,
     cvmx_bootmem_phy_get_next(cur_addr));
   }
   retval = 1;
   goto bootmem_free_done;
  } else if (phy_addr + size == cur_addr) {

   cvmx_bootmem_phy_set_size(phy_addr,
        cvmx_bootmem_phy_get_size
        (cur_addr) + size);
   cvmx_bootmem_phy_set_next(phy_addr,
        cvmx_bootmem_phy_get_next
        (cur_addr));
   cvmx_bootmem_phy_set_next(prev_addr, phy_addr);
   retval = 1;
   goto bootmem_free_done;
  }


  cvmx_bootmem_phy_set_size(phy_addr, size);
  cvmx_bootmem_phy_set_next(phy_addr, cur_addr);
  cvmx_bootmem_phy_set_next(prev_addr, phy_addr);

 }
 retval = 1;

bootmem_free_done:
 if (!(flags & CVMX_BOOTMEM_FLAG_NO_LOCKING))
  cvmx_bootmem_unlock();
 return retval;

}
