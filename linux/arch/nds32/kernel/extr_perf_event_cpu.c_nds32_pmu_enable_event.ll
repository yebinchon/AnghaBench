; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.nds32_pmu = type { i64 (%struct.hw_perf_event*, i32*)*, %struct.pmu_hw_events* (...)* }
%struct.pmu_hw_events = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"CPU enabling wrong pfm counter IRQ enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"NDS32 performance counters do not support mode exclusion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @nds32_pmu_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_pmu_enable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.nds32_pmu*, align 8
  %7 = alloca %struct.pmu_hw_events*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nds32_pmu* @to_nds32_pmu(i32 %13)
  store %struct.nds32_pmu* %14, %struct.nds32_pmu** %6, align 8
  %15 = load %struct.nds32_pmu*, %struct.nds32_pmu** %6, align 8
  %16 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %15, i32 0, i32 1
  %17 = load %struct.pmu_hw_events* (...)*, %struct.pmu_hw_events* (...)** %16, align 8
  %18 = call %struct.pmu_hw_events* (...) %17()
  store %struct.pmu_hw_events* %18, %struct.pmu_hw_events** %7, align 8
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nds32_pmu*, %struct.nds32_pmu** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @nds32_pfm_counter_valid(%struct.nds32_pmu* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %72

28:                                               ; preds = %1
  %29 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %7, align 8
  %30 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @raw_spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @nds32_pfm_disable_counter(i32 %33)
  %35 = load %struct.nds32_pmu*, %struct.nds32_pmu** %6, align 8
  %36 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %35, i32 0, i32 0
  %37 = load i64 (%struct.hw_perf_event*, i32*)*, i64 (%struct.hw_perf_event*, i32*)** %36, align 8
  %38 = icmp ne i64 (%struct.hw_perf_event*, i32*)* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.nds32_pmu*, %struct.nds32_pmu** %6, align 8
  %41 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %40, i32 0, i32 0
  %42 = load i64 (%struct.hw_perf_event*, i32*)*, i64 (%struct.hw_perf_event*, i32*)** %41, align 8
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 0
  %46 = call i64 %42(%struct.hw_perf_event* %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39, %28
  %49 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = call i64 @event_requires_mode_exclusion(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 @pr_notice(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %56 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %48, %39
  %58 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %59 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @nds32_pfm_write_evtsel(i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @nds32_pfm_enable_intens(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @nds32_pfm_enable_counter(i32 %66)
  %68 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %7, align 8
  %69 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %68, i32 0, i32 0
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @raw_spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %57, %26
  ret void
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(i32) #1

declare dso_local i32 @nds32_pfm_counter_valid(%struct.nds32_pmu*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nds32_pfm_disable_counter(i32) #1

declare dso_local i64 @event_requires_mode_exclusion(i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @nds32_pfm_write_evtsel(i32, i32) #1

declare dso_local i32 @nds32_pfm_enable_intens(i32) #1

declare dso_local i32 @nds32_pfm_enable_counter(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
