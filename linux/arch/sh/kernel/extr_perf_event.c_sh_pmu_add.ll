; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c_sh_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c_sh_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (%struct.hw_perf_event*, i32)* }
%struct.hw_perf_event = type { i32, i32 }
%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@sh_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @sh_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @perf_pmu_disable(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @__test_and_set_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %2
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_pmu, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @find_first_zero_bit(i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_pmu, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %74

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %44 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__set_bit(i32 %42, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %49 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %41, %2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_pmu, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.hw_perf_event*, i32)*, i32 (%struct.hw_perf_event*, i32)** %52, align 8
  %54 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 %53(%struct.hw_perf_event* %54, i32 %55)
  %57 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %58 = load i32, i32* @PERF_HES_STOPPED, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @PERF_EF_START, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %69 = load i32, i32* @PERF_EF_RELOAD, align 4
  %70 = call i32 @sh_pmu_start(%struct.perf_event* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %50
  %72 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %73 = call i32 @perf_event_update_userpage(%struct.perf_event* %72)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %40
  %75 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @perf_pmu_enable(i32 %77)
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @sh_pmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
