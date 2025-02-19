; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmc_idx_to_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmc_idx_to_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32 }
%struct.kvm_pmu = type { i32 }
%struct.kvm_vcpu = type { i32 }

@PMU_TYPE_COUNTER = common dso_local global i32 0, align 4
@X86_FEATURE_PERFCTR_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_pmc* (%struct.kvm_pmu*, i32)* @amd_pmc_idx_to_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_pmc* @amd_pmc_idx_to_pmc(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %8 = load i32, i32* @PMU_TYPE_COUNTER, align 4
  %9 = call i32 @get_msr_base(%struct.kvm_pmu* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %11 = call %struct.kvm_vcpu* @pmu_to_vcpu(%struct.kvm_pmu* %10)
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %6, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %13 = load i32, i32* @X86_FEATURE_PERFCTR_CORE, align 4
  %14 = call i64 @guest_cpuid_has(%struct.kvm_vcpu* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %21, %22
  %24 = load i32, i32* @PMU_TYPE_COUNTER, align 4
  %25 = call %struct.kvm_pmc* @get_gp_pmc_amd(%struct.kvm_pmu* %20, i32 %23, i32 %24)
  ret %struct.kvm_pmc* %25
}

declare dso_local i32 @get_msr_base(%struct.kvm_pmu*, i32) #1

declare dso_local %struct.kvm_vcpu* @pmu_to_vcpu(%struct.kvm_pmu*) #1

declare dso_local i64 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.kvm_pmc* @get_gp_pmc_amd(%struct.kvm_pmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
