; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.perf_event*)* }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32 }
%struct.cpu_hw_events = type { i32**, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_pmu_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %6, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @test_bit(i64 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = call i32 %19(%struct.perf_event* %20)
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @__clear_bit(i64 %24, i32 %27)
  %29 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %30 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  store i32* null, i32** %35, align 8
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PERF_HES_STOPPED, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @WARN_ON_ONCE(i32 %40)
  %42 = load i32, i32* @PERF_HES_STOPPED, align 4
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %44 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %18, %2
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @PERF_EF_UPDATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %54 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %52
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = call i32 @x86_perf_event_update(%struct.perf_event* %60)
  %62 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %63 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %59, %52, %47
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @x86_perf_event_update(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
