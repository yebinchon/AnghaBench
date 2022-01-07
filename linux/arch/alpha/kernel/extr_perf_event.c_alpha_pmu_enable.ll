; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_hw_events = type { i32, i64, i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERFMON_CMD_LOGGING_OPTIONS = common dso_local global i32 0, align 4
@EV67_PCTR_MODE_AGGREGATE = common dso_local global i32 0, align 4
@PERFMON_CMD_DESIRED_EVENTS = common dso_local global i32 0, align 4
@PERFMON_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @alpha_pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_pmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %4, %struct.cpu_hw_events** %3, align 8
  %5 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %6 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = call i32 (...) @barrier()
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %10
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %20 = call i32 @maybe_change_configuration(%struct.cpu_hw_events* %19)
  %21 = load i32, i32* @PERFMON_CMD_LOGGING_OPTIONS, align 4
  %22 = load i32, i32* @EV67_PCTR_MODE_AGGREGATE, align 4
  %23 = call i32 @wrperfmon(i32 %21, i32 %22)
  %24 = load i32, i32* @PERFMON_CMD_DESIRED_EVENTS, align 4
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wrperfmon(i32 %24, i32 %27)
  %29 = load i32, i32* @PERFMON_CMD_ENABLE, align 4
  %30 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %31 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @wrperfmon(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %9, %18, %10
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @maybe_change_configuration(%struct.cpu_hw_events*) #1

declare dso_local i32 @wrperfmon(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
