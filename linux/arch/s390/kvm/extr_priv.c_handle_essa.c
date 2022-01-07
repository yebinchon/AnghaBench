
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {TYPE_6__* sie_block; struct gmap* gmap; } ;
struct TYPE_10__ {int instruction_essa; } ;
struct kvm_vcpu {TYPE_7__ arch; TYPE_9__* kvm; TYPE_1__ stat; } ;
struct gmap {TYPE_8__* mm; } ;
struct TYPE_12__ {int migration_mode; int use_cmma; } ;
struct TYPE_18__ {TYPE_5__* mm; int srcu; TYPE_3__ arch; } ;
struct TYPE_17__ {int mmap_sem; } ;
struct TYPE_11__ {int mask; } ;
struct TYPE_15__ {int cbrlo; int ipb; int ecb2; TYPE_2__ gpsw; } ;
struct TYPE_13__ {int uses_cmm; } ;
struct TYPE_14__ {int mmap_sem; TYPE_4__ context; } ;


 int ECB2_CMMA ;
 int ESSA_SET_STABLE_IF_RESIDENT ;
 int ESSA_SET_STABLE_NODAT ;
 int PAGE_MASK ;
 int PGM_OPERATION ;
 int PGM_PRIVILEGED_OP ;
 int PGM_SPECIFICATION ;
 int PSW_MASK_PSTATE ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int) ;
 int __do_essa (struct kvm_vcpu*,int) ;
 int __gmap_zap (struct gmap*,unsigned long) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int kvm_s390_retry_instr (struct kvm_vcpu*) ;
 unsigned long* phys_to_virt (int) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 scalar_t__ test_kvm_facility (TYPE_9__*,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int handle_essa(struct kvm_vcpu *vcpu)
{

 int entries = (vcpu->arch.sie_block->cbrlo & ~PAGE_MASK) >> 3;
 unsigned long *cbrlo;
 struct gmap *gmap;
 int i, orc;

 VCPU_EVENT(vcpu, 4, "ESSA: release %d pages", entries);
 gmap = vcpu->arch.gmap;
 vcpu->stat.instruction_essa++;
 if (!vcpu->kvm->arch.use_cmma)
  return kvm_s390_inject_program_int(vcpu, PGM_OPERATION);

 if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
  return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);

 orc = (vcpu->arch.sie_block->ipb & 0xf0000000) >> 28;

 if (orc > (test_kvm_facility(vcpu->kvm, 147) ? ESSA_SET_STABLE_NODAT
      : ESSA_SET_STABLE_IF_RESIDENT))
  return kvm_s390_inject_program_int(vcpu, PGM_SPECIFICATION);

 if (!vcpu->kvm->arch.migration_mode) {
  if (vcpu->kvm->mm->context.uses_cmm == 0) {
   down_write(&vcpu->kvm->mm->mmap_sem);
   vcpu->kvm->mm->context.uses_cmm = 1;
   up_write(&vcpu->kvm->mm->mmap_sem);
  }
  vcpu->arch.sie_block->ecb2 |= ECB2_CMMA;

  kvm_s390_retry_instr(vcpu);
 } else {
  int srcu_idx;

  down_read(&vcpu->kvm->mm->mmap_sem);
  srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
  i = __do_essa(vcpu, orc);
  srcu_read_unlock(&vcpu->kvm->srcu, srcu_idx);
  up_read(&vcpu->kvm->mm->mmap_sem);
  if (i < 0)
   return i;

  entries += i;
 }
 vcpu->arch.sie_block->cbrlo &= PAGE_MASK;
 cbrlo = phys_to_virt(vcpu->arch.sie_block->cbrlo);
 down_read(&gmap->mm->mmap_sem);
 for (i = 0; i < entries; ++i)
  __gmap_zap(gmap, cbrlo[i]);
 up_read(&gmap->mm->mmap_sem);
 return 0;
}
