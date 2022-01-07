; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i64 }

@ARMV8_IDX_CYCLE_COUNTER = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_P = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_C = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_LC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @armv8pmu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armv8pmu_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.arm_pmu*
  store %struct.arm_pmu* %7, %struct.arm_pmu** %3, align 8
  %8 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %9 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @ARMV8_IDX_CYCLE_COUNTER, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @armv8pmu_disable_counter(i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @armv8pmu_disable_intens(i64 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %12

24:                                               ; preds = %12
  %25 = load i32, i32* @U32_MAX, align 4
  %26 = call i32 @kvm_clr_pmu_events(i32 %25)
  %27 = load i32, i32* @ARMV8_PMU_PMCR_P, align 4
  %28 = load i32, i32* @ARMV8_PMU_PMCR_C, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ARMV8_PMU_PMCR_LC, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @armv8pmu_pmcr_write(i32 %31)
  ret void
}

declare dso_local i32 @armv8pmu_disable_counter(i64) #1

declare dso_local i32 @armv8pmu_disable_intens(i64) #1

declare dso_local i32 @kvm_clr_pmu_events(i32) #1

declare dso_local i32 @armv8pmu_pmcr_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
