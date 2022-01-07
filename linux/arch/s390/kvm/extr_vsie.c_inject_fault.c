
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_s390_pgm_info {scalar_t__ code; int trans_exc_code; int op_access_id; int exc_access_id; } ;
typedef int __u64 ;
typedef scalar_t__ __u16 ;


 scalar_t__ PGM_PROTECTION ;
 int kvm_s390_inject_prog_irq (struct kvm_vcpu*,struct kvm_s390_pgm_info*) ;

__attribute__((used)) static int inject_fault(struct kvm_vcpu *vcpu, __u16 code, __u64 vaddr,
   bool write_flag)
{
 struct kvm_s390_pgm_info pgm = {
  .code = code,
  .trans_exc_code =

   (vaddr & 0xfffffffffffff000UL) |

   (((unsigned int) !write_flag) + 1) << 10,

  .exc_access_id = 0,
  .op_access_id = 0,
 };
 int rc;

 if (code == PGM_PROTECTION)
  pgm.trans_exc_code |= 0x4UL;

 rc = kvm_s390_inject_prog_irq(vcpu, &pgm);
 return rc ? rc : 1;
}
