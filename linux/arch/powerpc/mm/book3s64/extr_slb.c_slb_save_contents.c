
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slb_entry {unsigned long esid; unsigned long vsid; } ;
struct TYPE_2__ {int slb_cache_ptr; int slb_save_cache_ptr; } ;


 TYPE_1__* get_paca () ;
 int mmu_slb_size ;

void slb_save_contents(struct slb_entry *slb_ptr)
{
 int i;
 unsigned long e, v;


 get_paca()->slb_save_cache_ptr = get_paca()->slb_cache_ptr;

 if (!slb_ptr)
  return;

 for (i = 0; i < mmu_slb_size; i++) {
  asm volatile("slbmfee  %0,%1" : "=r" (e) : "r" (i));
  asm volatile("slbmfev  %0,%1" : "=r" (v) : "r" (i));
  slb_ptr->esid = e;
  slb_ptr->vsid = v;
  slb_ptr++;
 }
}
