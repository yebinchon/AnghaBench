; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_reprogram_fixed_counters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_reprogram_fixed_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmu = type { i32, i32 }
%struct.kvm_pmc = type { i32 }

@MSR_CORE_PERF_FIXED_CTR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pmu*, i32)* @reprogram_fixed_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprogram_fixed_counters(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @fixed_ctrl_field(i32 %16, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @fixed_ctrl_field(i32 %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %25 = load i64, i64* @MSR_CORE_PERF_FIXED_CTR0, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu* %24, i64 %28)
  store %struct.kvm_pmc* %29, %struct.kvm_pmc** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %39

34:                                               ; preds = %15
  %35 = load %struct.kvm_pmc*, %struct.kvm_pmc** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @reprogram_fixed_counter(%struct.kvm_pmc* %35, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i64 @fixed_ctrl_field(i32, i32) #1

declare dso_local %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu*, i64) #1

declare dso_local i32 @reprogram_fixed_counter(%struct.kvm_pmc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
