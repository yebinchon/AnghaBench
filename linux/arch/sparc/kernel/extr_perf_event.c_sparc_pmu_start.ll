; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @sparc_pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %5, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = call i32 @active_event_index(%struct.cpu_hw_events* %8, %struct.perf_event* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PERF_EF_RELOAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON_ONCE(i32 %24)
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sparc_perf_event_set_period(%struct.perf_event* %26, %struct.TYPE_3__* %28, i32 %29)
  br label %31

31:                                               ; preds = %15, %2
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 0
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sparc_pmu_enable_event(%struct.cpu_hw_events* %35, %struct.TYPE_3__* %37, i32 %38)
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = call i32 @perf_event_update_userpage(%struct.perf_event* %40)
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @active_event_index(%struct.cpu_hw_events*, %struct.perf_event*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @sparc_perf_event_set_period(%struct.perf_event*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @sparc_pmu_enable_event(%struct.cpu_hw_events*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
