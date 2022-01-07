; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_sample_data = type { i32 }
%struct.pmu_hw_events = type { %struct.perf_event** }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.pt_regs = type { i32 }

@csky_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HPOFSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CSKY_PMU_MAX_EVENTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csky_pmu_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csky_pmu_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.perf_sample_data, align 4
  %7 = alloca %struct.pmu_hw_events*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_event*, align 8
  %11 = alloca %struct.hw_perf_event*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @csky_pmu, i32 0, i32 1), align 4
  %13 = call %struct.pmu_hw_events* @this_cpu_ptr(i32 %12)
  store %struct.pmu_hw_events* %13, %struct.pmu_hw_events** %7, align 8
  %14 = load i32, i32* @HPOFSR, align 4
  %15 = call i32 @cprcr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %20, %struct.pt_regs** %8, align 8
  %21 = call i32 @csky_pmu_disable(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @csky_pmu, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %66, %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @CSKY_PMU_MAX_EVENTS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %7, align 8
  %28 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %27, i32 0, i32 0
  %29 = load %struct.perf_event**, %struct.perf_event*** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %29, i64 %31
  %33 = load %struct.perf_event*, %struct.perf_event** %32, align 8
  store %struct.perf_event* %33, %struct.perf_event** %10, align 8
  %34 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %35 = icmp ne %struct.perf_event* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %66

37:                                               ; preds = %26
  %38 = load i32, i32* @HPOFSR, align 4
  %39 = call i32 @cprcr(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %66

45:                                               ; preds = %37
  %46 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 0
  store %struct.hw_perf_event* %47, %struct.hw_perf_event** %11, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %49 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = call i32 @csky_perf_event_update(%struct.perf_event* %48, %struct.hw_perf_event* %50)
  %52 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %6, i32 0, i32 %54)
  %56 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %57 = call i32 @csky_pmu_event_set_period(%struct.perf_event* %56)
  %58 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %60 = call i64 @perf_event_overflow(%struct.perf_event* %58, %struct.perf_sample_data* %6, %struct.pt_regs* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load %struct.perf_event*, %struct.perf_event** %10, align 8
  %64 = call i32 @csky_pmu_stop_event(%struct.perf_event* %63)
  br label %65

65:                                               ; preds = %62, %45
  br label %66

66:                                               ; preds = %65, %44, %36
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %22

69:                                               ; preds = %22
  %70 = call i32 @csky_pmu_enable(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @csky_pmu, i32 0, i32 0))
  %71 = call i32 (...) @irq_work_run()
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.pmu_hw_events* @this_cpu_ptr(i32) #1

declare dso_local i32 @cprcr(i32) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @csky_pmu_disable(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @csky_perf_event_update(%struct.perf_event*, %struct.hw_perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i32 @csky_pmu_event_set_period(%struct.perf_event*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @csky_pmu_stop_event(%struct.perf_event*) #1

declare dso_local i32 @csky_pmu_enable(i32*) #1

declare dso_local i32 @irq_work_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
