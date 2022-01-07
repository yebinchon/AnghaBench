; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pt_regs = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.cpu_hw_events = type { %struct.perf_event**, i32 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_DM_NMI = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@apic_perf_irqs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_pmu_handle_irq(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.perf_sample_data, align 4
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %4, align 8
  %10 = load i32, i32* @APIC_LVTPC, align 4
  %11 = load i32, i32* @APIC_DM_NMI, align 4
  %12 = call i32 @apic_write(i32 %10, i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %64, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %64

25:                                               ; preds = %17
  %26 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %27 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %26, i32 0, i32 0
  %28 = load %struct.perf_event**, %struct.perf_event*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %28, i64 %30
  %32 = load %struct.perf_event*, %struct.perf_event** %31, align 8
  store %struct.perf_event* %32, %struct.perf_event** %5, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %34 = call i64 @x86_perf_event_update(%struct.perf_event* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1), align 4
  %37 = sub nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = and i64 %35, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %64

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %3, i32 0, i32 %49)
  %51 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %52 = call i32 @x86_perf_event_set_period(%struct.perf_event* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %64

55:                                               ; preds = %43
  %56 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %58 = call i64 @perf_event_overflow(%struct.perf_event* %56, %struct.perf_sample_data* %3, %struct.pt_regs* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %62 = call i32 @x86_pmu_stop(%struct.perf_event* %61, i32 0)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %54, %42, %24
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %13

67:                                               ; preds = %13
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @apic_perf_irqs, align 4
  %72 = call i32 @inc_irq_stat(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @x86_perf_event_update(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i32 @x86_perf_event_set_period(%struct.perf_event*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @x86_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @inc_irq_stat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
