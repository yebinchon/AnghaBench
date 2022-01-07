; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32 }
%struct.pmu_hw_events = type { %struct.perf_event** }

@csky_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @csky_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csky_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu_hw_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @csky_pmu, i32 0, i32 0), align 4
  %8 = call %struct.pmu_hw_events* @this_cpu_ptr(i32 %7)
  store %struct.pmu_hw_events* %8, %struct.pmu_hw_events** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %6, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %5, align 8
  %13 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %12, i32 0, i32 0
  %14 = load %struct.perf_event**, %struct.perf_event*** %13, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %14, i64 %17
  store %struct.perf_event* %11, %struct.perf_event** %18, align 8
  %19 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %20 = load i32, i32* @PERF_HES_STOPPED, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PERF_EF_START, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = load i32, i32* @PERF_EF_RELOAD, align 4
  %31 = call i32 @csky_pmu_start(%struct.perf_event* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = call i32 @perf_event_update_userpage(%struct.perf_event* %33)
  ret i32 0
}

declare dso_local %struct.pmu_hw_events* @this_cpu_ptr(i32) #1

declare dso_local i32 @csky_pmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
