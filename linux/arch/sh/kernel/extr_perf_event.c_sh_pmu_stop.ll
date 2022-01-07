; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c_sh_pmu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c_sh_pmu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.hw_perf_event*, i32)* }
%struct.hw_perf_event = type { i32, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.cpu_hw_events = type { i32** }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@sh_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @sh_pmu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_pmu_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %8, %struct.cpu_hw_events** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %6, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PERF_HES_STOPPED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_pmu, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.hw_perf_event*, i32)*, i32 (%struct.hw_perf_event*, i32)** %23, align 8
  %25 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %24(%struct.hw_perf_event* %25, i32 %26)
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* @PERF_HES_STOPPED, align 4
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %21, %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PERF_EF_UPDATE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %45
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @sh_perf_event_update(%struct.perf_event* %54, %struct.hw_perf_event* %56, i32 %57)
  %59 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %53, %45, %40
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @sh_perf_event_update(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
