; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64 }
%struct.cpu_hw_events = type { i64, i64 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERFMON_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @alpha_pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.cpu_hw_events*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %5, align 8
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %6, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PERF_HES_STOPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PERF_EF_RELOAD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @alpha_perf_event_set_period(%struct.perf_event* %36, %struct.hw_perf_event* %37, i64 %40)
  br label %42

42:                                               ; preds = %26, %21
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %44 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %46 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = shl i64 1, %47
  %49 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %50 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %54 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load i32, i32* @PERFMON_CMD_ENABLE, align 4
  %59 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = shl i64 1, %61
  %63 = call i32 @wrperfmon(i32 %58, i64 %62)
  br label %64

64:                                               ; preds = %20, %57, %42
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @alpha_perf_event_set_period(%struct.perf_event*, %struct.hw_perf_event*, i64) #1

declare dso_local i32 @wrperfmon(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
