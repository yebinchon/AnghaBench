
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int level; unsigned int quadrant; int gpte_is_8_bytes; } ;
struct kvm_mmu_page {int * spt; TYPE_1__ role; } ;
typedef int gpa_t ;


 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 int PT32_ROOT_LEVEL ;
 unsigned int offset_in_page (int ) ;

__attribute__((used)) static u64 *get_written_sptes(struct kvm_mmu_page *sp, gpa_t gpa, int *nspte)
{
 unsigned page_offset, quadrant;
 u64 *spte;
 int level;

 page_offset = offset_in_page(gpa);
 level = sp->role.level;
 *nspte = 1;
 if (!sp->role.gpte_is_8_bytes) {
  page_offset <<= 1;





  if (level == PT32_ROOT_LEVEL) {
   page_offset &= ~7;
   page_offset <<= 1;
   *nspte = 2;
  }
  quadrant = page_offset >> PAGE_SHIFT;
  page_offset &= ~PAGE_MASK;
  if (quadrant != sp->role.quadrant)
   return ((void*)0);
 }

 spte = &sp->spt[page_offset / sizeof(*spte)];
 return spte;
}
