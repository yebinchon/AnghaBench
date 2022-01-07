; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_get_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_get_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_hw_events = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i64 }
%struct.arm_pmu = type { i32 }

@ARMV8_PMU_EVTYPE_EVENT = common dso_local global i64 0, align 8
@ARMV8_PMUV3_PERFCTR_CPU_CYCLES = common dso_local global i64 0, align 8
@ARMV8_IDX_CYCLE_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu_hw_events*, %struct.perf_event*)* @armv8pmu_get_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_get_event_idx(%struct.pmu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.arm_pmu*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i64, align 8
  store %struct.pmu_hw_events* %0, %struct.pmu_hw_events** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.arm_pmu* @to_arm_pmu(i32 %11)
  store %struct.arm_pmu* %12, %struct.arm_pmu** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %7, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARMV8_PMU_EVTYPE_EVENT, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @ARMV8_PMUV3_PERFCTR_CPU_CYCLES, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load i32, i32* @ARMV8_IDX_CYCLE_COUNTER, align 4
  %25 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %26 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @test_and_set_bit(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ARMV8_IDX_CYCLE_COUNTER, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %35 = call i64 @armv8pmu_event_is_64bit(%struct.perf_event* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %39 = load %struct.arm_pmu*, %struct.arm_pmu** %6, align 8
  %40 = call i32 @armv8pmu_get_chain_idx(%struct.pmu_hw_events* %38, %struct.arm_pmu* %39)
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %43 = load %struct.arm_pmu*, %struct.arm_pmu** %6, align 8
  %44 = call i32 @armv8pmu_get_single_idx(%struct.pmu_hw_events* %42, %struct.arm_pmu* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37, %30
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i64 @armv8pmu_event_is_64bit(%struct.perf_event*) #1

declare dso_local i32 @armv8pmu_get_chain_idx(%struct.pmu_hw_events*, %struct.arm_pmu*) #1

declare dso_local i32 @armv8pmu_get_single_idx(%struct.pmu_hw_events*, %struct.arm_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
