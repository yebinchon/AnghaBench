
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gpte_is_8_bytes; int word; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
typedef int gpa_t ;


 unsigned int offset_in_page (int ) ;
 int pgprintk (char*,int ,int,int ) ;

__attribute__((used)) static bool detect_write_misaligned(struct kvm_mmu_page *sp, gpa_t gpa,
        int bytes)
{
 unsigned offset, pte_size, misaligned;

 pgprintk("misaligned: gpa %llx bytes %d role %x\n",
   gpa, bytes, sp->role.word);

 offset = offset_in_page(gpa);
 pte_size = sp->role.gpte_is_8_bytes ? 8 : 4;





 if (!(offset & (pte_size - 1)) && bytes == 1)
  return 0;

 misaligned = (offset ^ (offset + bytes - 1)) & ~(pte_size - 1);
 misaligned |= bytes < 4;

 return misaligned;
}
