; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmc_idx_to_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmc_idx_to_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32 }
%struct.kvm_pmu = type { i32 }

@INTEL_PMC_IDX_FIXED = common dso_local global i32 0, align 4
@MSR_P6_EVNTSEL0 = common dso_local global i64 0, align 8
@MSR_CORE_PERF_FIXED_CTR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_pmc* (%struct.kvm_pmu*, i32)* @intel_pmc_idx_to_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_pmc* @intel_pmc_idx_to_pmc(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmc*, align 8
  %4 = alloca %struct.kvm_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %12 = load i64, i64* @MSR_P6_EVNTSEL0, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i64, i64* @MSR_P6_EVNTSEL0, align 8
  %17 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %11, i64 %15, i64 %16)
  store %struct.kvm_pmc* %17, %struct.kvm_pmc** %3, align 8
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MSR_CORE_PERF_FIXED_CTR0, align 4
  %25 = add nsw i32 %23, %24
  %26 = call %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu* %22, i32 %25)
  store %struct.kvm_pmc* %26, %struct.kvm_pmc** %3, align 8
  br label %27

27:                                               ; preds = %18, %10
  %28 = load %struct.kvm_pmc*, %struct.kvm_pmc** %3, align 8
  ret %struct.kvm_pmc* %28
}

declare dso_local %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu*, i64, i64) #1

declare dso_local %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
