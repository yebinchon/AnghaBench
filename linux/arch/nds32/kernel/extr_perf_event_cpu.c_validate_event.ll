; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_validate_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_validate_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.pmu_hw_events = type { i32 }
%struct.perf_event = type { i64, %struct.TYPE_2__, %struct.pmu* }
%struct.TYPE_2__ = type { i32 }
%struct.nds32_pmu = type { i64 (%struct.pmu_hw_events*, %struct.perf_event*)* }

@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*, %struct.pmu_hw_events*, %struct.perf_event*)* @validate_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_event(%struct.pmu* %0, %struct.pmu_hw_events* %1, %struct.perf_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu*, align 8
  %6 = alloca %struct.pmu_hw_events*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.nds32_pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %5, align 8
  store %struct.pmu_hw_events* %1, %struct.pmu_hw_events** %6, align 8
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  %11 = load %struct.pmu*, %struct.pmu** %10, align 8
  %12 = call %struct.nds32_pmu* @to_nds32_pmu(%struct.pmu* %11)
  store %struct.nds32_pmu* %12, %struct.nds32_pmu** %8, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %14 = call i64 @is_software_event(%struct.perf_event* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 2
  %20 = load %struct.pmu*, %struct.pmu** %19, align 8
  %21 = load %struct.pmu*, %struct.pmu** %5, align 8
  %22 = icmp ne %struct.pmu* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %53

24:                                               ; preds = %17
  %25 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %53

31:                                               ; preds = %24
  %32 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %53

44:                                               ; preds = %37, %31
  %45 = load %struct.nds32_pmu*, %struct.nds32_pmu** %8, align 8
  %46 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %45, i32 0, i32 0
  %47 = load i64 (%struct.pmu_hw_events*, %struct.perf_event*)*, i64 (%struct.pmu_hw_events*, %struct.perf_event*)** %46, align 8
  %48 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %49 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %50 = call i64 %47(%struct.pmu_hw_events* %48, %struct.perf_event* %49)
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %44, %43, %30, %23, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(%struct.pmu*) #1

declare dso_local i64 @is_software_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
