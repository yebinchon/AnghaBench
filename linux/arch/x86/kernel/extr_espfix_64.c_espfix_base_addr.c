
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ESPFIX_BASE_ADDR ;
 unsigned int ESPFIX_STACKS_PER_PAGE ;
 unsigned long ESPFIX_STACK_SIZE ;
 unsigned long PAGE_SHIFT ;
 unsigned int page_random ;
 unsigned int slot_random ;

__attribute__((used)) static inline unsigned long espfix_base_addr(unsigned int cpu)
{
 unsigned long page, slot;
 unsigned long addr;

 page = (cpu / ESPFIX_STACKS_PER_PAGE) ^ page_random;
 slot = (cpu + slot_random) % ESPFIX_STACKS_PER_PAGE;
 addr = (page << PAGE_SHIFT) + (slot * ESPFIX_STACK_SIZE);
 addr = (addr & 0xffffUL) | ((addr & ~0xffffUL) << 16);
 addr += ESPFIX_BASE_ADDR;
 return addr;
}
