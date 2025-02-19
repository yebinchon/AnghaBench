
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t rs; size_t rt; unsigned long simmediate; } ;
struct TYPE_3__ {unsigned long simmediate; } ;
union mips_instruction {TYPE_2__ i_format; TYPE_1__ spec3_format; } ;
typedef size_t u32 ;
struct kvm_vcpu_arch {unsigned long pc; unsigned long* gprs; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef unsigned long s16 ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int CPU_CAVIUM_OCTEON3 ;
 size_t CacheOp_Cache ;
 size_t CacheOp_Op ;
 size_t Cache_D ;
 size_t Cache_I ;
 int EMULATE_DONE ;
 int EMULATE_FAIL ;





 int boot_cpu_type () ;
 scalar_t__ cpu_has_mips_r6 ;
 int flush_dcache_line_indexed (unsigned long) ;
 int flush_icache_line_indexed (unsigned long) ;
 int kvm_debug (char*,size_t,size_t,size_t,unsigned long,unsigned long) ;
 int kvm_err (char*,unsigned long,unsigned long,size_t,size_t,size_t,unsigned long,unsigned long) ;
 int local_flush_icache_range (int ,int ) ;
 int update_pc (struct kvm_vcpu*,size_t) ;

__attribute__((used)) static enum emulation_result kvm_vz_gpsi_cache(union mips_instruction inst,
            u32 *opc, u32 cause,
            struct kvm_run *run,
            struct kvm_vcpu *vcpu)
{
 enum emulation_result er = EMULATE_DONE;
 u32 cache, op_inst, op, base;
 s16 offset;
 struct kvm_vcpu_arch *arch = &vcpu->arch;
 unsigned long va, curr_pc;





 curr_pc = vcpu->arch.pc;
 er = update_pc(vcpu, cause);
 if (er == EMULATE_FAIL)
  return er;

 base = inst.i_format.rs;
 op_inst = inst.i_format.rt;
 if (cpu_has_mips_r6)
  offset = inst.spec3_format.simmediate;
 else
  offset = inst.i_format.simmediate;
 cache = op_inst & CacheOp_Cache;
 op = op_inst & CacheOp_Op;

 va = arch->gprs[base] + offset;

 kvm_debug("CACHE (cache: %#x, op: %#x, base[%d]: %#lx, offset: %#x\n",
    cache, op, base, arch->gprs[base], offset);


 if (cache != Cache_I && cache != Cache_D)
  return EMULATE_DONE;

 switch (op_inst) {
 case 129:
  flush_icache_line_indexed(va);
  return EMULATE_DONE;
 case 128:
  flush_dcache_line_indexed(va);
  return EMULATE_DONE;
 case 131:
 case 132:
 case 130:
  if (boot_cpu_type() == CPU_CAVIUM_OCTEON3) {

   local_flush_icache_range(0, 0);
   return EMULATE_DONE;
  }


  break;
 default:
  break;
 };

 kvm_err("@ %#lx/%#lx CACHE (cache: %#x, op: %#x, base[%d]: %#lx, offset: %#x\n",
  curr_pc, vcpu->arch.gprs[31], cache, op, base, arch->gprs[base],
  offset);

 vcpu->arch.pc = curr_pc;

 return EMULATE_FAIL;
}
