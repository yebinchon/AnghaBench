
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * gpr; } ;
struct TYPE_8__ {int prodded; scalar_t__ hcall_needed; TYPE_2__ regs; int ceded; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_4__* kvm; } ;
struct TYPE_6__ {int rtas_tokens; int enabled_hcalls; } ;
struct TYPE_9__ {int srcu; TYPE_1__ arch; } ;


 int EINTR ;
 int ENOENT ;






 unsigned long H_FUNCTION ;

 unsigned long H_HARDWARE ;
 unsigned long H_INTERRUPT ;




 unsigned long H_NOT_AVAILABLE ;

 unsigned long H_PARAMETER ;
 unsigned long H_SUCCESS ;

 unsigned long H_TOO_HARD ;


 unsigned long MAX_HCALL_OPCODE ;
 int RESUME_GUEST ;
 int RESUME_HOST ;
 unsigned long do_h_register_vpa (struct kvm_vcpu*,void*,void*,void*) ;
 int kvm_arch_vcpu_yield_to (struct kvm_vcpu*) ;
 unsigned long kvmhv_copy_tofrom_guest_nested (struct kvm_vcpu*) ;
 unsigned long kvmhv_do_nested_tlbie (struct kvm_vcpu*) ;
 unsigned long kvmhv_enter_nested_guest (struct kvm_vcpu*) ;
 unsigned long kvmhv_set_partition_table (struct kvm_vcpu*) ;
 int kvmppc_fast_vcpu_kick_hv (struct kvm_vcpu*) ;
 struct kvm_vcpu* kvmppc_find_vcpu (TYPE_4__*,unsigned long) ;
 void* kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int kvmppc_get_yield_count (struct kvm_vcpu*) ;
 unsigned long kvmppc_h_get_tce (struct kvm_vcpu*,void*,void*) ;
 unsigned long kvmppc_h_logical_ci_load (struct kvm_vcpu*) ;
 unsigned long kvmppc_h_logical_ci_store (struct kvm_vcpu*) ;
 unsigned long kvmppc_h_page_init (struct kvm_vcpu*,void*,void*,void*) ;
 unsigned long kvmppc_h_put_tce (struct kvm_vcpu*,void*,void*,void*) ;
 unsigned long kvmppc_h_put_tce_indirect (struct kvm_vcpu*,void*,void*,void*,void*) ;
 unsigned long kvmppc_h_set_dabr (struct kvm_vcpu*,void*) ;
 unsigned long kvmppc_h_set_mode (struct kvm_vcpu*,void*,void*,void*,void*) ;
 unsigned long kvmppc_h_set_xdabr (struct kvm_vcpu*,void*,void*) ;
 unsigned long kvmppc_h_stuff_tce (struct kvm_vcpu*,void*,void*,void*,void*) ;
 int kvmppc_rtas_hcall (struct kvm_vcpu*) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,unsigned long) ;
 int kvmppc_xics_enabled (struct kvm_vcpu*) ;
 unsigned long kvmppc_xics_hcall (struct kvm_vcpu*,unsigned long) ;
 int list_empty (int *) ;
 int nesting_enabled (TYPE_4__*) ;
 int powernv_get_random_long (int *) ;
 int smp_mb () ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int test_bit (unsigned long,int ) ;
 int xics_on_xive () ;

int kvmppc_pseries_do_hcall(struct kvm_vcpu *vcpu)
{
 unsigned long req = kvmppc_get_gpr(vcpu, 3);
 unsigned long target, ret = H_SUCCESS;
 int yield_count;
 struct kvm_vcpu *tvcpu;
 int idx, rc;

 if (req <= MAX_HCALL_OPCODE &&
     !test_bit(req/4, vcpu->kvm->arch.enabled_hcalls))
  return RESUME_HOST;

 switch (req) {
 case 153:
  break;
 case 141:
  target = kvmppc_get_gpr(vcpu, 4);
  tvcpu = kvmppc_find_vcpu(vcpu->kvm, target);
  if (!tvcpu) {
   ret = H_PARAMETER;
   break;
  }
  tvcpu->arch.prodded = 1;
  smp_mb();
  if (tvcpu->arch.ceded)
   kvmppc_fast_vcpu_kick_hv(tvcpu);
  break;
 case 152:
  target = kvmppc_get_gpr(vcpu, 4);
  if (target == -1)
   break;
  tvcpu = kvmppc_find_vcpu(vcpu->kvm, target);
  if (!tvcpu) {
   ret = H_PARAMETER;
   break;
  }
  yield_count = kvmppc_get_gpr(vcpu, 5);
  if (kvmppc_get_yield_count(tvcpu) != yield_count)
   break;
  kvm_arch_vcpu_yield_to(tvcpu);
  break;
 case 137:
  ret = do_h_register_vpa(vcpu, kvmppc_get_gpr(vcpu, 4),
     kvmppc_get_gpr(vcpu, 5),
     kvmppc_get_gpr(vcpu, 6));
  break;
 case 136:
  if (list_empty(&vcpu->kvm->arch.rtas_tokens))
   return RESUME_HOST;

  idx = srcu_read_lock(&vcpu->kvm->srcu);
  rc = kvmppc_rtas_hcall(vcpu);
  srcu_read_unlock(&vcpu->kvm->srcu, idx);

  if (rc == -ENOENT)
   return RESUME_HOST;
  else if (rc == 0)
   break;


  return rc;
 case 144:
  ret = kvmppc_h_logical_ci_load(vcpu);
  if (ret == H_TOO_HARD)
   return RESUME_HOST;
  break;
 case 143:
  ret = kvmppc_h_logical_ci_store(vcpu);
  if (ret == H_TOO_HARD)
   return RESUME_HOST;
  break;
 case 134:
  ret = kvmppc_h_set_mode(vcpu, kvmppc_get_gpr(vcpu, 4),
     kvmppc_get_gpr(vcpu, 5),
     kvmppc_get_gpr(vcpu, 6),
     kvmppc_get_gpr(vcpu, 7));
  if (ret == H_TOO_HARD)
   return RESUME_HOST;
  break;
 case 129:
 case 150:
 case 148:
 case 146:
 case 145:
 case 128:
  if (kvmppc_xics_enabled(vcpu)) {
   if (xics_on_xive()) {
    ret = H_NOT_AVAILABLE;
    return RESUME_GUEST;
   }
   ret = kvmppc_xics_hcall(vcpu, req);
   break;
  }
  return RESUME_HOST;
 case 135:
  ret = kvmppc_h_set_dabr(vcpu, kvmppc_get_gpr(vcpu, 4));
  break;
 case 132:
  ret = kvmppc_h_set_xdabr(vcpu, kvmppc_get_gpr(vcpu, 4),
      kvmppc_get_gpr(vcpu, 5));
  break;
 case 138:
  if (!powernv_get_random_long(&vcpu->arch.regs.gpr[4]))
   ret = H_HARDWARE;
  break;

 case 133:
  ret = H_FUNCTION;
  if (nesting_enabled(vcpu->kvm))
   ret = kvmhv_set_partition_table(vcpu);
  break;
 case 149:
  ret = H_FUNCTION;
  if (!nesting_enabled(vcpu->kvm))
   break;
  ret = kvmhv_enter_nested_guest(vcpu);
  if (ret == H_INTERRUPT) {
   kvmppc_set_gpr(vcpu, 3, 0);
   vcpu->arch.hcall_needed = 0;
   return -EINTR;
  } else if (ret == H_TOO_HARD) {
   kvmppc_set_gpr(vcpu, 3, 0);
   vcpu->arch.hcall_needed = 0;
   return RESUME_HOST;
  }
  break;
 case 130:
  ret = H_FUNCTION;
  if (nesting_enabled(vcpu->kvm))
   ret = kvmhv_do_nested_tlbie(vcpu);
  break;
 case 151:
  ret = H_FUNCTION;
  if (nesting_enabled(vcpu->kvm))
   ret = kvmhv_copy_tofrom_guest_nested(vcpu);
  break;
 case 142:
  ret = kvmppc_h_page_init(vcpu, kvmppc_get_gpr(vcpu, 4),
      kvmppc_get_gpr(vcpu, 5),
      kvmppc_get_gpr(vcpu, 6));
  break;
 default:
  return RESUME_HOST;
 }
 kvmppc_set_gpr(vcpu, 3, ret);
 vcpu->arch.hcall_needed = 0;
 return RESUME_GUEST;
}
