; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @l2x0_pmu_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2x0_pmu_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PERF_HES_STOPPED, align 4
  %13 = and i32 %11, %12
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__l2x0_pmu_event_disable(i32 %20)
  %22 = load i32, i32* @PERF_HES_STOPPED, align 4
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PERF_EF_UPDATE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = call i32 @l2x0_pmu_event_read(%struct.perf_event* %32)
  %34 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %35 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %36 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %16, %31, %17
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__l2x0_pmu_event_disable(i32) #1

declare dso_local i32 @l2x0_pmu_event_read(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
