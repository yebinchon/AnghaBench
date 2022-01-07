; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_get_msr_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_get_msr_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmu = type { i32 }
%struct.kvm_vcpu = type { i32 }

@X86_FEATURE_PERFCTR_CORE = common dso_local global i32 0, align 4
@PMU_TYPE_COUNTER = common dso_local global i32 0, align 4
@MSR_F15H_PERF_CTR = common dso_local global i32 0, align 4
@MSR_F15H_PERF_CTL = common dso_local global i32 0, align 4
@MSR_K7_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_K7_EVNTSEL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_pmu*, i32)* @get_msr_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_msr_base(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_pmu*, %struct.kvm_pmu** %4, align 8
  %8 = call %struct.kvm_vcpu* @pmu_to_vcpu(%struct.kvm_pmu* %7)
  store %struct.kvm_vcpu* %8, %struct.kvm_vcpu** %6, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %10 = load i32, i32* @X86_FEATURE_PERFCTR_CORE, align 4
  %11 = call i64 @guest_cpuid_has(%struct.kvm_vcpu* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PMU_TYPE_COUNTER, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @MSR_F15H_PERF_CTR, align 4
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %13
  %20 = load i32, i32* @MSR_F15H_PERF_CTL, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PMU_TYPE_COUNTER, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @MSR_K7_PERFCTR0, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @MSR_K7_EVNTSEL0, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25, %19, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.kvm_vcpu* @pmu_to_vcpu(%struct.kvm_pmu*) #1

declare dso_local i64 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
