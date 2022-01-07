; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @l2x0_pmu_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2x0_pmu_event_start(%struct.perf_event* %0, i32 %1) #0 {
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
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %47

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PERF_EF_RELOAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = call i32 @l2x0_pmu_event_configure(%struct.perf_event* %35)
  br label %37

37:                                               ; preds = %25, %20
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %44 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__l2x0_pmu_event_enable(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %37, %19
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @l2x0_pmu_event_configure(%struct.perf_event*) #1

declare dso_local i32 @__l2x0_pmu_event_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
