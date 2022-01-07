; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_read_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32 }
%struct.arm_pmu = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"CPU%u reading wrong counter %d\0A\00", align 1
@ARMV8_IDX_CYCLE_COUNTER = common dso_local global i32 0, align 4
@pmccntr_el0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @armv8pmu_read_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_read_counter(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.arm_pmu* @to_arm_pmu(i32 %9)
  store %struct.arm_pmu* %10, %struct.arm_pmu** %3, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %4, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @armv8pmu_counter_valid(%struct.arm_pmu* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 (...) @smp_processor_id()
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %35

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ARMV8_IDX_CYCLE_COUNTER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @pmccntr_el0, align 4
  %30 = call i32 @read_sysreg(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %33 = call i32 @armv8pmu_read_hw_counter(%struct.perf_event* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i32 @armv8pmu_counter_valid(%struct.arm_pmu*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @read_sysreg(i32) #1

declare dso_local i32 @armv8pmu_read_hw_counter(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
