; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_power.c_pmu_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_power.c_pmu_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @pmu_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %5, align 8
  %8 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %9 = load i32, i32* @PERF_HES_STOPPED, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PERF_EF_START, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i32 @__pmu_event_start(%struct.perf_event* %18)
  br label %20

20:                                               ; preds = %17, %2
  ret i32 0
}

declare dso_local i32 @__pmu_event_start(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
