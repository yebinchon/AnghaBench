; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.xtensa_pmu_events = type { %struct.perf_event**, i32 }

@xtensa_pmu_events = common dso_local global i32 0, align 4
@XCHAL_NUM_PERF_COUNTERS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @xtensa_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtensa_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xtensa_pmu_events*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.xtensa_pmu_events* @this_cpu_ptr(i32* @xtensa_pmu_events)
  store %struct.xtensa_pmu_events* %9, %struct.xtensa_pmu_events** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %7, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %6, align 8
  %17 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @__test_and_set_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %6, align 8
  %23 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XCHAL_NUM_PERF_COUNTERS, align 4
  %26 = call i32 @find_first_zero_bit(i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @XCHAL_NUM_PERF_COUNTERS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %66

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %6, align 8
  %36 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @__set_bit(i32 %34, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %2
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %6, align 8
  %45 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %44, i32 0, i32 0
  %46 = load %struct.perf_event**, %struct.perf_event*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %46, i64 %48
  store %struct.perf_event* %43, %struct.perf_event** %49, align 8
  %50 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %51 = load i32, i32* @PERF_HES_STOPPED, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %54 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PERF_EF_START, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %42
  %60 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %61 = load i32, i32* @PERF_EF_RELOAD, align 4
  %62 = call i32 @xtensa_pmu_start(%struct.perf_event* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %42
  %64 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %65 = call i32 @perf_event_update_userpage(%struct.perf_event* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %30
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.xtensa_pmu_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @xtensa_pmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
