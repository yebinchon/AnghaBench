; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i32, i32 (%struct.perf_event*)*, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.pmu_hw_events = type { %struct.perf_event** }
%struct.pt_regs = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_pmu*)* @armv8pmu_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_handle_irq(%struct.arm_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_sample_data, align 4
  %6 = alloca %struct.pmu_hw_events*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_event*, align 8
  %10 = alloca %struct.hw_perf_event*, align 8
  store %struct.arm_pmu* %0, %struct.arm_pmu** %3, align 8
  %11 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.pmu_hw_events* @this_cpu_ptr(i32 %13)
  store %struct.pmu_hw_events* %14, %struct.pmu_hw_events** %6, align 8
  %15 = call i32 (...) @armv8pmu_getreset_flags()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @armv8pmu_has_overflowed(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %22, %struct.pt_regs** %7, align 8
  %23 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %24 = call i32 @armv8pmu_stop(%struct.arm_pmu* %23)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %73, %21
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %28 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %25
  %32 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %33 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %32, i32 0, i32 0
  %34 = load %struct.perf_event**, %struct.perf_event*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %34, i64 %36
  %38 = load %struct.perf_event*, %struct.perf_event** %37, align 8
  store %struct.perf_event* %38, %struct.perf_event** %9, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %40 = icmp ne %struct.perf_event* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %73

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @armv8pmu_counter_has_overflowed(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %73

48:                                               ; preds = %42
  %49 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  store %struct.hw_perf_event* %50, %struct.hw_perf_event** %10, align 8
  %51 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %52 = call i32 @armpmu_event_update(%struct.perf_event* %51)
  %53 = load %struct.hw_perf_event*, %struct.hw_perf_event** %10, align 8
  %54 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %5, i32 0, i32 %55)
  %57 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %58 = call i32 @armpmu_event_set_period(%struct.perf_event* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %73

61:                                               ; preds = %48
  %62 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %64 = call i64 @perf_event_overflow(%struct.perf_event* %62, %struct.perf_sample_data* %5, %struct.pt_regs* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %68 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %67, i32 0, i32 1
  %69 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %68, align 8
  %70 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %71 = call i32 %69(%struct.perf_event* %70)
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %60, %47, %41
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %25

76:                                               ; preds = %25
  %77 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %78 = call i32 @armv8pmu_start(%struct.arm_pmu* %77)
  %79 = call i32 (...) @irq_work_run()
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.pmu_hw_events* @this_cpu_ptr(i32) #1

declare dso_local i32 @armv8pmu_getreset_flags(...) #1

declare dso_local i32 @armv8pmu_has_overflowed(i32) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @armv8pmu_stop(%struct.arm_pmu*) #1

declare dso_local i32 @armv8pmu_counter_has_overflowed(i32, i32) #1

declare dso_local i32 @armpmu_event_update(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i32 @armpmu_event_set_period(%struct.perf_event*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @armv8pmu_start(%struct.arm_pmu*) #1

declare dso_local i32 @irq_work_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
