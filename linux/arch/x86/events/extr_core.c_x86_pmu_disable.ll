; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.pmu = type { i32 }
%struct.cpu_hw_events = type { i64, i64 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @x86_pmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_pmu_disable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %4, %struct.cpu_hw_events** %3, align 8
  %5 = call i32 (...) @x86_pmu_initialized()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %22

14:                                               ; preds = %8
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = call i32 (...) @barrier()
  %20 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %21 = call i32 (...) %20()
  br label %22

22:                                               ; preds = %14, %13, %7
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @x86_pmu_initialized(...) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
