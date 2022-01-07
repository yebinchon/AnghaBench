; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.nds32_pmu = type { i32 (%struct.pmu_hw_events*, %struct.perf_event*)*, i32 (%struct.perf_event*)*, %struct.pmu_hw_events* (...)* }
%struct.pmu_hw_events = type { %struct.perf_event** }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @nds32_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nds32_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nds32_pmu*, align 8
  %6 = alloca %struct.pmu_hw_events*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nds32_pmu* @to_nds32_pmu(i32 %12)
  store %struct.nds32_pmu* %13, %struct.nds32_pmu** %5, align 8
  %14 = load %struct.nds32_pmu*, %struct.nds32_pmu** %5, align 8
  %15 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %14, i32 0, i32 2
  %16 = load %struct.pmu_hw_events* (...)*, %struct.pmu_hw_events* (...)** %15, align 8
  %17 = call %struct.pmu_hw_events* (...) %16()
  store %struct.pmu_hw_events* %17, %struct.pmu_hw_events** %6, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 1
  store %struct.hw_perf_event* %19, %struct.hw_perf_event** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @perf_pmu_disable(i32 %22)
  %24 = load %struct.nds32_pmu*, %struct.nds32_pmu** %5, align 8
  %25 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %24, i32 0, i32 0
  %26 = load i32 (%struct.pmu_hw_events*, %struct.perf_event*)*, i32 (%struct.pmu_hw_events*, %struct.perf_event*)** %25, align 8
  %27 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = call i32 %26(%struct.pmu_hw_events* %27, %struct.perf_event* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %9, align 4
  br label %67

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.nds32_pmu*, %struct.nds32_pmu** %5, align 8
  %40 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %39, i32 0, i32 1
  %41 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %40, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = call i32 %41(%struct.perf_event* %42)
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %46 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %45, i32 0, i32 0
  %47 = load %struct.perf_event**, %struct.perf_event*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %47, i64 %49
  store %struct.perf_event* %44, %struct.perf_event** %50, align 8
  %51 = load i32, i32* @PERF_HES_STOPPED, align 4
  %52 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PERF_EF_START, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %34
  %61 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %62 = load i32, i32* @PERF_EF_RELOAD, align 4
  %63 = call i32 @nds32_start(%struct.perf_event* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %34
  %65 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %66 = call i32 @perf_event_update_userpage(%struct.perf_event* %65)
  br label %67

67:                                               ; preds = %64, %32
  %68 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @perf_pmu_enable(i32 %70)
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(i32) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @nds32_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
