; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c___rapl_pmu_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c___rapl_pmu_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_pmu = type { i32, i32 }
%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rapl_pmu*, %struct.perf_event*)* @__rapl_pmu_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rapl_pmu_event_start(%struct.rapl_pmu* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.rapl_pmu*, align 8
  %4 = alloca %struct.perf_event*, align 8
  store %struct.rapl_pmu* %0, %struct.rapl_pmu** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PERF_HES_STOPPED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 1
  %23 = load %struct.rapl_pmu*, %struct.rapl_pmu** %3, align 8
  %24 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = call i32 @rapl_read_counter(%struct.perf_event* %29)
  %31 = call i32 @local64_set(i32* %28, i32 %30)
  %32 = load %struct.rapl_pmu*, %struct.rapl_pmu** %3, align 8
  %33 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rapl_pmu*, %struct.rapl_pmu** %3, align 8
  %37 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = load %struct.rapl_pmu*, %struct.rapl_pmu** %3, align 8
  %42 = call i32 @rapl_start_hrtimer(%struct.rapl_pmu* %41)
  br label %43

43:                                               ; preds = %16, %40, %17
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @rapl_read_counter(%struct.perf_event*) #1

declare dso_local i32 @rapl_start_hrtimer(%struct.rapl_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
