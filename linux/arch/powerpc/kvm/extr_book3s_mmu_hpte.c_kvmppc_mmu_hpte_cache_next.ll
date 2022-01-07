; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_hpte_cache_next.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_mmu_hpte.c_kvmppc_mmu_hpte_cache_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpte_cache = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_book3s = type { i64 }

@HPTEG_CACHE_NUM = common dso_local global i64 0, align 8
@hpte_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpte_cache* @kvmppc_mmu_hpte_cache_next(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %4 = alloca %struct.hpte_cache*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %5)
  store %struct.kvmppc_vcpu_book3s* %6, %struct.kvmppc_vcpu_book3s** %3, align 8
  %7 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %3, align 8
  %8 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HPTEG_CACHE_NUM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = call i32 @kvmppc_mmu_pte_flush_all(%struct.kvm_vcpu* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @hpte_cache, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hpte_cache* @kmem_cache_zalloc(i32 %16, i32 %17)
  store %struct.hpte_cache* %18, %struct.hpte_cache** %4, align 8
  %19 = load %struct.hpte_cache*, %struct.hpte_cache** %4, align 8
  ret %struct.hpte_cache* %19
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_mmu_pte_flush_all(%struct.kvm_vcpu*) #1

declare dso_local %struct.hpte_cache* @kmem_cache_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
