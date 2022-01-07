; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_disable_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpu_hw_events = type { i32, %struct.perf_event** }
%struct.perf_event = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @p4_pmu_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p4_pmu_disable_all() #0 {
  %1 = alloca %struct.cpu_hw_events*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %4, %struct.cpu_hw_events** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %27, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 1
  %12 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %12, i64 %14
  %16 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  store %struct.perf_event* %16, %struct.perf_event** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %19 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  br label %27

24:                                               ; preds = %9
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = call i32 @p4_pmu_disable_event(%struct.perf_event* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %5

30:                                               ; preds = %5
  %31 = call i32 (...) @p4_pmu_disable_pebs()
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @p4_pmu_disable_event(%struct.perf_event*) #1

declare dso_local i32 @p4_pmu_disable_pebs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
