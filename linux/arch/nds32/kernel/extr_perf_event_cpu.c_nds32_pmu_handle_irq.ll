; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample_data = type { i32 }
%struct.nds32_pmu = type { i32, i32 (%struct.perf_event*)*, %struct.pmu_hw_events* (...)* }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.pmu_hw_events = type { %struct.perf_event** }
%struct.pt_regs = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nds32_pmu_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nds32_pmu_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_sample_data, align 4
  %8 = alloca %struct.nds32_pmu*, align 8
  %9 = alloca %struct.pmu_hw_events*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_event*, align 8
  %13 = alloca %struct.hw_perf_event*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.nds32_pmu*
  store %struct.nds32_pmu* %15, %struct.nds32_pmu** %8, align 8
  %16 = load %struct.nds32_pmu*, %struct.nds32_pmu** %8, align 8
  %17 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %16, i32 0, i32 2
  %18 = load %struct.pmu_hw_events* (...)*, %struct.pmu_hw_events* (...)** %17, align 8
  %19 = call %struct.pmu_hw_events* (...) %18()
  store %struct.pmu_hw_events* %19, %struct.pmu_hw_events** %9, align 8
  %20 = call i32 (...) @nds32_pfm_getreset_flags()
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @nds32_pfm_has_overflowed(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %86

26:                                               ; preds = %2
  %27 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %27, %struct.pt_regs** %10, align 8
  %28 = load %struct.nds32_pmu*, %struct.nds32_pmu** %8, align 8
  %29 = call i32 @nds32_pmu_stop(%struct.nds32_pmu* %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %78, %26
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.nds32_pmu*, %struct.nds32_pmu** %8, align 8
  %33 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  %37 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %9, align 8
  %38 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %37, i32 0, i32 0
  %39 = load %struct.perf_event**, %struct.perf_event*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %39, i64 %41
  %43 = load %struct.perf_event*, %struct.perf_event** %42, align 8
  store %struct.perf_event* %43, %struct.perf_event** %12, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %45 = icmp ne %struct.perf_event* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %78

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @nds32_pfm_counter_has_overflowed(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %78

53:                                               ; preds = %47
  %54 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  store %struct.hw_perf_event* %55, %struct.hw_perf_event** %13, align 8
  %56 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %57 = call i32 @nds32_pmu_event_update(%struct.perf_event* %56)
  %58 = load %struct.hw_perf_event*, %struct.hw_perf_event** %13, align 8
  %59 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %7, i32 0, i32 %60)
  %62 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %63 = call i32 @nds32_pmu_event_set_period(%struct.perf_event* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %78

66:                                               ; preds = %53
  %67 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %69 = call i64 @perf_event_overflow(%struct.perf_event* %67, %struct.perf_sample_data* %7, %struct.pt_regs* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.nds32_pmu*, %struct.nds32_pmu** %8, align 8
  %73 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %72, i32 0, i32 1
  %74 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %73, align 8
  %75 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %76 = call i32 %74(%struct.perf_event* %75)
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77, %65, %52, %46
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %30

81:                                               ; preds = %30
  %82 = load %struct.nds32_pmu*, %struct.nds32_pmu** %8, align 8
  %83 = call i32 @nds32_pmu_start(%struct.nds32_pmu* %82)
  %84 = call i32 (...) @irq_work_run()
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @nds32_pfm_getreset_flags(...) #1

declare dso_local i32 @nds32_pfm_has_overflowed(i32) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @nds32_pmu_stop(%struct.nds32_pmu*) #1

declare dso_local i32 @nds32_pfm_counter_has_overflowed(i32, i32) #1

declare dso_local i32 @nds32_pmu_event_update(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i32 @nds32_pmu_event_set_period(%struct.perf_event*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @nds32_pmu_start(%struct.nds32_pmu*) #1

declare dso_local i32 @irq_work_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
