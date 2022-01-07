; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i32 }
%struct.pmu_hw_events = type { i32 }

@ARMV8_PMU_PMCR_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_pmu*)* @armv8pmu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armv8pmu_stop(%struct.arm_pmu* %0) #0 {
  %2 = alloca %struct.arm_pmu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pmu_hw_events*, align 8
  store %struct.arm_pmu* %0, %struct.arm_pmu** %2, align 8
  %5 = load %struct.arm_pmu*, %struct.arm_pmu** %2, align 8
  %6 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pmu_hw_events* @this_cpu_ptr(i32 %7)
  store %struct.pmu_hw_events* %8, %struct.pmu_hw_events** %4, align 8
  %9 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %10 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = call i32 (...) @armv8pmu_pmcr_read()
  %14 = load i32, i32* @ARMV8_PMU_PMCR_E, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @armv8pmu_pmcr_write(i32 %16)
  %18 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %19 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @raw_spin_unlock_irqrestore(i32* %19, i64 %20)
  ret void
}

declare dso_local %struct.pmu_hw_events* @this_cpu_ptr(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @armv8pmu_pmcr_write(i32) #1

declare dso_local i32 @armv8pmu_pmcr_read(...) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
