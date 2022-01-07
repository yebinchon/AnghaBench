; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.perf_event*)* }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cpu_hw_events = type { i32, i32, %struct.perf_event** }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @x86_pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PERF_HES_STOPPED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %75

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %75

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PERF_EF_RELOAD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON_ONCE(i32 %45)
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = call i32 @x86_perf_event_set_period(%struct.perf_event* %47)
  br label %49

49:                                               ; preds = %36, %31
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %54 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %55 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %54, i32 0, i32 2
  %56 = load %struct.perf_event**, %struct.perf_event*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %56, i64 %58
  store %struct.perf_event* %53, %struct.perf_event** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %62 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__set_bit(i32 %60, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %67 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @__set_bit(i32 %65, i32 %68)
  %70 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = call i32 %70(%struct.perf_event* %71)
  %73 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %74 = call i32 @perf_event_update_userpage(%struct.perf_event* %73)
  br label %75

75:                                               ; preds = %49, %30, %23
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @x86_perf_event_set_period(%struct.perf_event*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
