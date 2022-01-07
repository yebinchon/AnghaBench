; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_enable_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_enable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cpu_hw_events = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_pmu_enable_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %6, %struct.cpu_hw_events** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %13 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.hw_perf_event* %19, %struct.hw_perf_event** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %11
  br label %31

27:                                               ; preds = %11
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %29 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %30 = call i32 @__x86_pmu_enable_event(%struct.hw_perf_event* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %7

34:                                               ; preds = %7
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__x86_pmu_enable_event(%struct.hw_perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
