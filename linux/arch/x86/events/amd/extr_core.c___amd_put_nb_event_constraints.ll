; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c___amd_put_nb_event_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c___amd_put_nb_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_hw_events = type { %struct.amd_nb* }
%struct.amd_nb = type { i64 }
%struct.perf_event = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, %struct.perf_event*)* @__amd_put_nb_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__amd_put_nb_event_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.amd_nb*, align 8
  %6 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %8 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %7, i32 0, i32 0
  %9 = load %struct.amd_nb*, %struct.amd_nb** %8, align 8
  store %struct.amd_nb* %9, %struct.amd_nb** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.amd_nb*, %struct.amd_nb** %5, align 8
  %16 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = call %struct.perf_event* @cmpxchg(i64 %20, %struct.perf_event* %21, i32* null)
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = icmp eq %struct.perf_event* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %30

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %10

30:                                               ; preds = %25, %10
  ret void
}

declare dso_local %struct.perf_event* @cmpxchg(i64, %struct.perf_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
