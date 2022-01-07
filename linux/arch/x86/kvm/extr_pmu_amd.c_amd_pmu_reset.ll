; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { %struct.kvm_pmc* }
%struct.kvm_pmc = type { i64, i64 }

@AMD64_NUM_COUNTERS_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @amd_pmu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_pmu_reset(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %6)
  store %struct.kvm_pmu* %7, %struct.kvm_pmu** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AMD64_NUM_COUNTERS_CORE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %13, i32 0, i32 0
  %15 = load %struct.kvm_pmc*, %struct.kvm_pmc** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %15, i64 %17
  store %struct.kvm_pmc* %18, %struct.kvm_pmc** %5, align 8
  %19 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %20 = call i32 @pmc_stop_counter(%struct.kvm_pmc* %19)
  %21 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %8

28:                                               ; preds = %8
  ret void
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

declare dso_local i32 @pmc_stop_counter(%struct.kvm_pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
