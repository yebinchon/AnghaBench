; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i64, i64, i64, i64, %struct.kvm_pmc*, %struct.kvm_pmc* }
%struct.kvm_pmc = type { i64, i64 }

@INTEL_PMC_MAX_GENERIC = common dso_local global i32 0, align 4
@INTEL_PMC_MAX_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @intel_pmu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_reset(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca %struct.kvm_pmc*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %6)
  store %struct.kvm_pmu* %7, %struct.kvm_pmu** %3, align 8
  store %struct.kvm_pmc* null, %struct.kvm_pmc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @INTEL_PMC_MAX_GENERIC, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %13, i32 0, i32 5
  %15 = load %struct.kvm_pmc*, %struct.kvm_pmc** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %15, i64 %17
  store %struct.kvm_pmc* %18, %struct.kvm_pmc** %4, align 8
  %19 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %20 = call i32 @pmc_stop_counter(%struct.kvm_pmc* %19)
  %21 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %8

28:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @INTEL_PMC_MAX_FIXED, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %34, i32 0, i32 4
  %36 = load %struct.kvm_pmc*, %struct.kvm_pmc** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %36, i64 %38
  store %struct.kvm_pmc* %39, %struct.kvm_pmc** %4, align 8
  %40 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %41 = call i32 @pmc_stop_counter(%struct.kvm_pmc* %40)
  %42 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %53 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %55 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
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
