
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* sie_block; } ;
struct kvm_vcpu {TYPE_7__* kvm; TYPE_5__ arch; TYPE_3__* run; } ;
struct kvm_memory_slot {scalar_t__ base_gfn; } ;
struct TYPE_14__ {int cmma_dirty_pages; } ;
struct TYPE_15__ {TYPE_6__ arch; int mm; } ;
struct TYPE_12__ {int cbrlo; } ;
struct TYPE_9__ {unsigned long* gprs; } ;
struct TYPE_10__ {TYPE_1__ regs; } ;
struct TYPE_11__ {TYPE_2__ s; } ;


 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PGM_ADDRESSING ;
 unsigned long _PAGE_INVALID ;
 unsigned long _PGSTE_GPS_NODAT ;
 unsigned long _PGSTE_GPS_USAGE_MASK ;
 unsigned long _PGSTE_GPS_ZERO ;
 int atomic64_inc (int *) ;
 unsigned long gfn_to_hva (TYPE_7__*,unsigned long) ;
 struct kvm_memory_slot* gfn_to_memslot (TYPE_7__*,unsigned long) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 int kvm_s390_get_regs_rre (struct kvm_vcpu*,int*,int*) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int kvm_second_dirty_bitmap (struct kvm_memory_slot*) ;
 int pgste_perform_essa (int ,unsigned long,int const,unsigned long*,unsigned long*) ;
 unsigned long* phys_to_virt (int) ;
 int test_and_set_bit (scalar_t__,int ) ;

__attribute__((used)) static inline int __do_essa(struct kvm_vcpu *vcpu, const int orc)
{
 int r1, r2, nappended, entries;
 unsigned long gfn, hva, res, pgstev, ptev;
 unsigned long *cbrlo;






 kvm_s390_get_regs_rre(vcpu, &r1, &r2);
 gfn = vcpu->run->s.regs.gprs[r2] >> PAGE_SHIFT;
 hva = gfn_to_hva(vcpu->kvm, gfn);
 entries = (vcpu->arch.sie_block->cbrlo & ~PAGE_MASK) >> 3;

 if (kvm_is_error_hva(hva))
  return kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);

 nappended = pgste_perform_essa(vcpu->kvm->mm, hva, orc, &ptev, &pgstev);
 if (nappended < 0) {
  res = orc ? 0x10 : 0;
  vcpu->run->s.regs.gprs[r1] = res;
  return 0;
 }
 res = (pgstev & _PGSTE_GPS_USAGE_MASK) >> 22;






 if (ptev & _PAGE_INVALID) {
  res |= 2;
  if (pgstev & _PGSTE_GPS_ZERO)
   res |= 1;
 }
 if (pgstev & _PGSTE_GPS_NODAT)
  res |= 0x20;
 vcpu->run->s.regs.gprs[r1] = res;






 if (nappended > 0) {
  cbrlo = phys_to_virt(vcpu->arch.sie_block->cbrlo & PAGE_MASK);
  cbrlo[entries] = gfn << PAGE_SHIFT;
 }

 if (orc) {
  struct kvm_memory_slot *ms = gfn_to_memslot(vcpu->kvm, gfn);


  if (ms && !test_and_set_bit(gfn - ms->base_gfn, kvm_second_dirty_bitmap(ms)))
   atomic64_inc(&vcpu->kvm->arch.cmma_dirty_pages);
 }

 return nappended;
}
