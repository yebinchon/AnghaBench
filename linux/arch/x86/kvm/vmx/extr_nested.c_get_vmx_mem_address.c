
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int base; int type; scalar_t__ unusable; int limit; } ;
typedef int gva_t ;


 int GP_VECTOR ;
 int SS_VECTOR ;
 int UD_VECTOR ;
 int VCPU_SREG_FS ;
 int VCPU_SREG_GS ;
 int VCPU_SREG_SS ;
 scalar_t__ is_long_mode (struct kvm_vcpu*) ;
 int is_noncanonical_address (int,struct kvm_vcpu*) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_queue_exception_e (struct kvm_vcpu*,int ,int ) ;
 int kvm_register_read (struct kvm_vcpu*,int) ;
 scalar_t__ sign_extend64 (int,int) ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;

int get_vmx_mem_address(struct kvm_vcpu *vcpu, unsigned long exit_qualification,
   u32 vmx_instruction_info, bool wr, int len, gva_t *ret)
{
 gva_t off;
 bool exn;
 struct kvm_segment s;
 int scaling = vmx_instruction_info & 3;
 int addr_size = (vmx_instruction_info >> 7) & 7;
 bool is_reg = vmx_instruction_info & (1u << 10);
 int seg_reg = (vmx_instruction_info >> 15) & 7;
 int index_reg = (vmx_instruction_info >> 18) & 0xf;
 bool index_is_valid = !(vmx_instruction_info & (1u << 22));
 int base_reg = (vmx_instruction_info >> 23) & 0xf;
 bool base_is_valid = !(vmx_instruction_info & (1u << 27));

 if (is_reg) {
  kvm_queue_exception(vcpu, UD_VECTOR);
  return 1;
 }



 off = exit_qualification;
 if (addr_size == 1)
  off = (gva_t)sign_extend64(off, 31);
 else if (addr_size == 0)
  off = (gva_t)sign_extend64(off, 15);
 if (base_is_valid)
  off += kvm_register_read(vcpu, base_reg);
 if (index_is_valid)
  off += kvm_register_read(vcpu, index_reg)<<scaling;
 vmx_get_segment(vcpu, &s, seg_reg);







 if (addr_size == 1)
  off &= 0xffffffff;
 else if (addr_size == 0)
  off &= 0xffff;


 exn = 0;
 if (is_long_mode(vcpu)) {





  if (seg_reg == VCPU_SREG_FS || seg_reg == VCPU_SREG_GS)
   *ret = s.base + off;
  else
   *ret = off;





  exn = is_noncanonical_address(*ret, vcpu);
 } else {





  *ret = (s.base + off) & 0xffffffff;







  if (wr)



   exn = ((s.type & 0xa) == 0 || (s.type & 8));
  else



   exn = ((s.type & 0xa) == 8);
  if (exn) {
   kvm_queue_exception_e(vcpu, GP_VECTOR, 0);
   return 1;
  }


  exn = (s.unusable != 0);







  if (!(s.base == 0 && s.limit == 0xffffffff &&
       ((s.type & 8) || !(s.type & 4))))
   exn = exn || ((u64)off + len - 1 > s.limit);
 }
 if (exn) {
  kvm_queue_exception_e(vcpu,
          seg_reg == VCPU_SREG_SS ?
      SS_VECTOR : GP_VECTOR,
          0);
  return 1;
 }

 return 0;
}
