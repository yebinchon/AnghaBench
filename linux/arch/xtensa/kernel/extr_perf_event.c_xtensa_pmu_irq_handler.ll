; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xtensa_pmu_events = type { %struct.perf_event**, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@xtensa_pmu_events = common dso_local global i32 0, align 4
@XCHAL_NUM_PERF_COUNTERS = common dso_local global i32 0, align 4
@XTENSA_PMU_PMSTAT_OVFL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_pmu_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xtensa_pmu_events*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_event*, align 8
  %10 = alloca %struct.hw_perf_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_sample_data, align 4
  %13 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %5, align 4
  %15 = call %struct.xtensa_pmu_events* @this_cpu_ptr(i32* @xtensa_pmu_events)
  store %struct.xtensa_pmu_events* %15, %struct.xtensa_pmu_events** %6, align 8
  %16 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %6, align 8
  %17 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XCHAL_NUM_PERF_COUNTERS, align 4
  %20 = call i32 @find_first_bit(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %74, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @XCHAL_NUM_PERF_COUNTERS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @XTENSA_PMU_PMSTAT(i32 %26)
  %28 = call i32 @get_er(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %6, align 8
  %30 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %29, i32 0, i32 0
  %31 = load %struct.perf_event**, %struct.perf_event*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %31, i64 %33
  %35 = load %struct.perf_event*, %struct.perf_event** %34, align 8
  store %struct.perf_event* %35, %struct.perf_event** %9, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 0
  store %struct.hw_perf_event* %37, %struct.hw_perf_event** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @XTENSA_PMU_PMSTAT_OVFL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  br label %74

43:                                               ; preds = %25
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @XTENSA_PMU_PMSTAT(i32 %45)
  %47 = call i32 @set_er(i32 %44, i32 %46)
  %48 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %49 = load %struct.hw_perf_event*, %struct.hw_perf_event** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @xtensa_perf_event_update(%struct.perf_event* %48, %struct.hw_perf_event* %49, i32 %50)
  %52 = load %struct.hw_perf_event*, %struct.hw_perf_event** %10, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @xtensa_perf_event_set_period(%struct.perf_event* %55, %struct.hw_perf_event* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %43
  %61 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %61, %struct.pt_regs** %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %12, i32 0, i32 %62)
  %64 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %65 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %66 = call i64 @perf_event_overflow(%struct.perf_event* %64, %struct.perf_sample_data* %12, %struct.pt_regs* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %70 = call i32 @xtensa_pmu_stop(%struct.perf_event* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %60
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %42
  %75 = load %struct.xtensa_pmu_events*, %struct.xtensa_pmu_events** %6, align 8
  %76 = getelementptr inbounds %struct.xtensa_pmu_events, %struct.xtensa_pmu_events* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @XCHAL_NUM_PERF_COUNTERS, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  %81 = call i32 @find_next_bit(i32 %77, i32 %78, i32 %80)
  store i32 %81, i32* %7, align 4
  br label %21

82:                                               ; preds = %21
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.xtensa_pmu_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @get_er(i32) #1

declare dso_local i32 @XTENSA_PMU_PMSTAT(i32) #1

declare dso_local i32 @set_er(i32, i32) #1

declare dso_local i32 @xtensa_perf_event_update(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

declare dso_local i64 @xtensa_perf_event_set_period(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @xtensa_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
