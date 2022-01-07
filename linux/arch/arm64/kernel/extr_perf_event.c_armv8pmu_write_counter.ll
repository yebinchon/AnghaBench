; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_write_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_write_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32 }
%struct.arm_pmu = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"CPU%u writing wrong counter %d\0A\00", align 1
@ARMV8_IDX_CYCLE_COUNTER = common dso_local global i32 0, align 4
@pmccntr_el0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @armv8pmu_write_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armv8pmu_write_counter(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_pmu*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.arm_pmu* @to_arm_pmu(i32 %10)
  store %struct.arm_pmu* %11, %struct.arm_pmu** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %6, align 8
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.arm_pmu*, %struct.arm_pmu** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @armv8pmu_counter_valid(%struct.arm_pmu* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = call i32 (...) @smp_processor_id()
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ARMV8_IDX_CYCLE_COUNTER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = call i32 @armv8pmu_event_is_64bit(%struct.perf_event* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = or i64 %35, -4294967296
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @pmccntr_el0, align 4
  %41 = call i32 @write_sysreg(i32 %39, i32 %40)
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @armv8pmu_write_hw_counter(%struct.perf_event* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %21
  ret void
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i32 @armv8pmu_counter_valid(%struct.arm_pmu*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @armv8pmu_event_is_64bit(%struct.perf_event*) #1

declare dso_local i32 @write_sysreg(i32, i32) #1

declare dso_local i32 @armv8pmu_write_hw_counter(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
