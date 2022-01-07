; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.cpu_hw_events = type { %struct.perf_event** }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @mipspmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipspmu_add(%struct.perf_event* %0, i32 %1) #0 {
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
  store i32 0, i32* %8, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @perf_pmu_disable(i32 %14)
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %18 = call i32 @mipsxx_pmu_alloc_counter(%struct.cpu_hw_events* %16, %struct.hw_perf_event* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mipsxx_pmu_disable_event(i32 %28)
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %32 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %31, i32 0, i32 0
  %33 = load %struct.perf_event**, %struct.perf_event*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %33, i64 %35
  store %struct.perf_event* %30, %struct.perf_event** %36, align 8
  %37 = load i32, i32* @PERF_HES_STOPPED, align 4
  %38 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PERF_EF_START, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = load i32, i32* @PERF_EF_RELOAD, align 4
  %49 = call i32 @mipspmu_start(%struct.perf_event* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %23
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = call i32 @perf_event_update_userpage(%struct.perf_event* %51)
  br label %53

53:                                               ; preds = %50, %21
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @perf_pmu_enable(i32 %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @mipsxx_pmu_alloc_counter(%struct.cpu_hw_events*, %struct.hw_perf_event*) #1

declare dso_local i32 @mipsxx_pmu_disable_event(i32) #1

declare dso_local i32 @mipspmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
