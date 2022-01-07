; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmu_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmu_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i32*, i32, i32, i64, i64, i32 }

@X86_FEATURE_PERFCTR_CORE = common dso_local global i32 0, align 4
@AMD64_NUM_COUNTERS_CORE = common dso_local global i32 0, align 4
@AMD64_NUM_COUNTERS = common dso_local global i32 0, align 4
@KVM_PMC_GP = common dso_local global i64 0, align 8
@KVM_PMC_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @amd_pmu_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_pmu_refresh(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %4)
  store %struct.kvm_pmu* %5, %struct.kvm_pmu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = load i32, i32* @X86_FEATURE_PERFCTR_CORE, align 4
  %8 = call i64 @guest_cpuid_has(%struct.kvm_vcpu* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @AMD64_NUM_COUNTERS_CORE, align 4
  %12 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @AMD64_NUM_COUNTERS, align 4
  %16 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @KVM_PMC_GP, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 undef, i32* %23, align 4
  %24 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %24, i32 0, i32 1
  store i32 2097152, i32* %25, align 8
  %26 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %26, i32 0, i32 2
  store i32 1, i32* %27, align 4
  %28 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @KVM_PMC_FIXED, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 0, i32* %32, align 4
  %33 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

declare dso_local i64 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
