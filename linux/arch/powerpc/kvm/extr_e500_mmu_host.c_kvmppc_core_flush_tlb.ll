; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_core_flush_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_kvmppc_core_flush_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_e500 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_core_flush_tlb(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_vcpu_e500*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %4)
  store %struct.kvmppc_vcpu_e500* %5, %struct.kvmppc_vcpu_e500** %3, align 8
  %6 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %7 = call i32 @kvmppc_e500_tlbil_all(%struct.kvmppc_vcpu_e500* %6)
  %8 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %9 = call i32 @clear_tlb_privs(%struct.kvmppc_vcpu_e500* %8)
  %10 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %3, align 8
  %11 = call i32 @clear_tlb1_bitmap(%struct.kvmppc_vcpu_e500* %10)
  ret void
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_e500_tlbil_all(%struct.kvmppc_vcpu_e500*) #1

declare dso_local i32 @clear_tlb_privs(%struct.kvmppc_vcpu_e500*) #1

declare dso_local i32 @clear_tlb1_bitmap(%struct.kvmppc_vcpu_e500*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
