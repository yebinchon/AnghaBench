
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int SRMMU_NOCACHE_BITMAP_SHIFT ;
 unsigned long SRMMU_NOCACHE_VADDR ;
 int bit_map_clear (int *,int,int) ;
 int is_power_of_2 (int) ;
 int printk (char*,unsigned long,...) ;
 unsigned long srmmu_nocache_end ;
 int srmmu_nocache_map ;

void srmmu_free_nocache(void *addr, int size)
{
 unsigned long vaddr;
 int offset;

 vaddr = (unsigned long)addr;
 if (vaddr < SRMMU_NOCACHE_VADDR) {
  printk("Vaddr %lx is smaller than nocache base 0x%lx\n",
      vaddr, (unsigned long)SRMMU_NOCACHE_VADDR);
  BUG();
 }
 if (vaddr + size > srmmu_nocache_end) {
  printk("Vaddr %lx is bigger than nocache end 0x%lx\n",
      vaddr, srmmu_nocache_end);
  BUG();
 }
 if (!is_power_of_2(size)) {
  printk("Size 0x%x is not a power of 2\n", size);
  BUG();
 }
 if (size < SRMMU_NOCACHE_BITMAP_SHIFT) {
  printk("Size 0x%x is too small\n", size);
  BUG();
 }
 if (vaddr & (size - 1)) {
  printk("Vaddr %lx is not aligned to size 0x%x\n", vaddr, size);
  BUG();
 }

 offset = (vaddr - SRMMU_NOCACHE_VADDR) >> SRMMU_NOCACHE_BITMAP_SHIFT;
 size = size >> SRMMU_NOCACHE_BITMAP_SHIFT;

 bit_map_clear(&srmmu_nocache_map, offset, size);
}
